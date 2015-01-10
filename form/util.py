import os
import sys

def is_linux():
    return sys.platform.startswith('linux')

def is_darwin():
    return sys.platform.startswith('darwin')

def is_posix():
    return is_linux() or is_darwin()

def is_windows():
    return sys.platform == 'win32'

def root_focus_applescript():
    os.system("""osascript -e 'tell application "System Events" to set frontmost of (every process whose unix id is '%i') to true'"""
        % os.getpid())

def chdir(path):
    if not os.path.isdir(path):
        path = os.path.dirname(path)
    os.chdir(path)
