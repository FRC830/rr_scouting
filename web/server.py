import bottle

from bottle import post, redirect, request, route, static_file, view

@route('/')
def callback():
    redirect('/form')

@route('/test')
def callback():
    return '1'

@route('/form')
@view('form')
def callback():
    return dict()

@post('/form/save')
def callback():
    print('text1 = %s' % request.forms.get('text1', 'nothing provided'))
    redirect('/form')

@route('/static/<path:path>')
def callback(path):
    return static_file(path, 'static')

@route('/data/<path:path>')
def callback(path):
    return static_file(path, 'data')

def main(host, port):
    app = bottle.app()
    app.run(host=host, port=port, debug=True)
