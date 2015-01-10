from __future__ import print_function

import jsonparser
import tkwrapper as tk
import util

class App(tk.Toplevel):
    def __init__(self, parent):
        tk.Toplevel.__init__(self, parent)
        self.title("App")
        self.protocol('WM_DELETE_WINDOW', parent.destroy)

def main():
    util.chdir(__file__)
    version = jsonparser.JsonFile('version.json', touch=True).get('version', 'unknown')
    print('Scouting form version %s' % version)
    root = tk.Tk()
    root.withdraw()
    App(root)
    if util.is_darwin():
        util.root_focus_applescript()
    root.mainloop()

if __name__ == '__main__':
    main()
