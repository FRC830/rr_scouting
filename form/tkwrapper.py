import sys
py_version = int(sys.version[0])

import util

if py_version == 2:
    from tkMessageBox import *
    from tkFileDialog import *
    from Tkinter import *
    from ttk import *
    import Tkinter as tkinter
else:
    from tkinter.messagebox import *
    from tkinter.filedialog import *
    from tkinter import *
    from tkinter.ttk import *
    import tkinter

if util.is_darwin():
    # ttk doesn't allow the background color of these widgets to be changed from
    # light grey to white, to match the window background, so fall back to Tk's
    Label = tkinter.Label
    Button = tkinter.Button

class Toplevel(tkinter.Toplevel):
    def bring_to_front(self):
        self.withdraw()
        self.deiconify()

class Root(tkinter.Tk):
    def __init__(self, *args, **kwargs):
        tkinter.Tk.__init__(self, *args, **kwargs)
        self.withdraw()
        self.idle()

    def idle(self):
        # Ensure that Tk's mainloop() doesn't block for too long on some
        # platforms to allow Ctrl-C to quit without additional interaction
        self.after(100, self.idle)
