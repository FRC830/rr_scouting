from __future__ import print_function

import glob
import os

import dataform
import jsonparser
import styles
import tkwrapper as tk
import util

class FormList(tk.Listbox):
    def __init__(self, parent, files, callback):
        tk.Listbox.__init__(self, parent, width=30)
        self.callback = callback
        self.bind('<Double-Button-1>', lambda event: self.trigger())
        self.bind('<Return>', lambda event: self.trigger())
        self.choices = choices = []
        for f in files:
            try:
                title = jsonparser.JsonFile(f)['title']
            except (ValueError, KeyError):
                pass
            else:
                choices.append({'title': title, 'path': f})
                self.insert('end', title)

    def curselection(self):
        return self.choices[tk.Listbox.curselection(self)[0]]

    def trigger(self):
        if tk.Listbox.curselection(self):
            self.callback(self.curselection())

class App(tk.Toplevel):
    def __init__(self, parent):
        tk.Toplevel.__init__(self, parent)
        self.title("Forms")
        self.protocol('WM_DELETE_WINDOW', parent.destroy)
        forms = glob.glob(os.path.join('data', '*.json'))
        self.grid()
        self.columnconfigure(1, weight=1)
        self.rowconfigure(2, weight=1)
        tk.Label(self, text="Forms:").grid(row=1, column=1)
        self.form_list = FormList(self, forms, callback=self.select_form)
        self.form_list.grid(row=2, column=1, sticky='nsew')
        if not len(self.form_list.choices):
            tk.showerror('', 'No forms found!')
            self.destroy()
            parent.destroy()
        tk.Button(self, text='Select', command=self.form_list.trigger).grid(row=3, column=1, sticky='es')

    def select_form(self, form):
        FormWindow(self, path=form['path'], title=form['title'])
        self.withdraw()

class FormWindow(tk.Toplevel):
    def __init__(self, parent, path, title):
        tk.Toplevel.__init__(self, parent)
        self.parent = parent
        self.protocol('WM_DELETE_WINDOW', self.destroy)
        self.title(title)
        self.bring_to_front()
        self.path = path

    def destroy(self):
        self.parent.deiconify()
        tk.Toplevel.destroy(self)

def main():
    util.chdir(__file__)
    os.chdir(os.path.dirname(os.getcwd()))
    version = jsonparser.JsonFile('form/version.json', touch=True).get('version', 'unknown')
    print('Scouting form version %s' % version)
    root = tk.Tk()
    root.withdraw()
    styles.init()
    App(root)
    if util.is_darwin():
        util.root_focus_applescript()
    root.mainloop()

if __name__ == '__main__':
    main()
