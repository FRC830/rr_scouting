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
    #print('text1 = %s' % request.forms.get('text1', 'nothing provided'))
    f = request.forms
    for k in f:
        print('%s -> %s' % (k, f.getall(k) if len(f.getall(k)) > 1 else f.get(k)))
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
