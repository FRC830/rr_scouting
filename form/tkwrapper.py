import sys
py_version = int(sys.version[0])

if py_version == 2:
    from tkMessageBox import *
    from tkFileDialog import *
    from Tkinter import *
    from ttk import *
else:
    from tkinter.messagebox import *
    from tkinter.filedialog import *
    from tkinter import *
    from tkinter.ttk import *
