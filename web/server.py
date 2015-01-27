import bottle

from bottle import redirect, route, static_file, view

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

@route('/static/<path:path>')
def callback(path):
    return static_file(path, 'static')

def main(host, port):
    app = bottle.app()
    app.run(host=host, port=port, debug=True)

