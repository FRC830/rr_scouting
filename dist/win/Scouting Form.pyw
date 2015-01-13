#! /usr/bin/env python
import os, sys
os.chdir(os.path.dirname(__file__))

if not os.path.isfile('form/app.py'):
    mb = None
    try:
        import tkMessageBox as mb
    except ImportError:
        try:
            import tkinter.messagebox as mb
        except ImportError:
            pass
    if mb is not None:
        mb.showerror('Fatal error', 'Could not find form/app.py')
        sys.exit(1)

os.execv(sys.executable, ['form/app.py'] + sys.argv[1:])
