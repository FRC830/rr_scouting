import os, subprocess, sys, threading, time, webbrowser
if sys.version[0] == '2':
    from urllib2 import urlopen
else:
    from urllib.request import urlopen

os.chdir(os.path.dirname(os.path.abspath(__file__)))
def abspath(*parts):
    return os.path.join(os.getcwd(), *parts)
sys.path.append(abspath('depends'))
sys.path.append(abspath('depends', 'waitress-submodule'))

if not os.path.isdir('depends/waitress-submodule/waitress'):
    print('Warning: submodules not initialized properly')
    try:
        err = subprocess.call(['git', 'submodule', 'update', '--init'])
        assert not err, 'git error'
    except Exception as e:
        print('Failed to update submodules: %s' % e)
        sys.exit(1)

import bottle
bottle.TEMPLATE_PATH.append('web')

# Monkey patch!
_orig_run = bottle.WaitressServer.run
def _new_run(self, app):
    open_page()
    _orig_run(self, app)
bottle.WaitressServer.run = _new_run

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
