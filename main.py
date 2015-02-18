import os, sys, threading, time, webbrowser
if sys.version[0] == '2':
    from urllib2 import urlopen
else:
    from urllib.request import urlopen
def abspath(p):
    return os.path.join(os.path.dirname(__file__), p)
sys.path.append(abspath('depends'))

import bottle
bottle.TEMPLATE_PATH.append('web')

# Monkey patch!
_orig_run = bottle.WSGIRefServer.run
def _new_run(self, app):
    open_page()
    _orig_run(self, app)
bottle.WSGIRefServer.run = _new_run

def server_running():
    try:
        c = urlopen('http://localhost:8000/test').read()
        if c == '1' or c == b'1':
            return True
    except Exception:
        pass
    return False

def open_page():
    if '--no-open' in sys.argv:
        return
    webbrowser.open('http://localhost:8000')

if server_running():
    open_page()
else:
    import web.server
    web.server.main('0.0.0.0', 8000)
