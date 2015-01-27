import os, sys
def abspath(p):
    return os.path.join(os.path.dirname(__file__), p)
sys.path.append(abspath('depends'))

import bottle
bottle.TEMPLATE_PATH.append('web')

import web.server
web.server.main('0.0.0.0', 8000)
