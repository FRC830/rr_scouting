import os, sys, threading, time, urllib2, webbrowser
def abspath(p):
    return os.path.join(os.path.dirname(__file__), p)
sys.path.append(abspath('depends'))

import bottle
bottle.TEMPLATE_PATH.append('web')

def server_running():
    try:
        if urllib2.urlopen('http://localhost:8000/test').read() == '1':
            return True
    except Exception:
        pass
    return False

def open_page():
    webbrowser.open('http://localhost:8000')

class evil_callback_thread(threading.Thread):
    daemon = True
    def run(self):
        time.sleep(3)
        open_page()

if server_running():
    open_page()
else:
    import web.server
    evil_callback_thread().start()
    web.server.main('0.0.0.0', 8000)
