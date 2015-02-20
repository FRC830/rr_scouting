import sys

import bottle
from bottle import post, redirect, request, route, static_file, view

import lib.csvexport as csvexport

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
    f = request.forms
    data = {}
    for k in f:
        data[k] = f.get(k)
    csvexport.export(csvexport.process(data), "match_data.csv")
    redirect('/form')

@route('/static/<path:path>')
def callback(path):
    return static_file(path, 'static')

@route('/data/<path:path>')
def callback(path):
    return static_file(path, 'data')

@route('/random-script')
def callback():
    pass

def main(host, port, adapter):
    app = bottle.app()
    app.run(host=host, port=port, debug=True, server=adapter,
        reloader=('--reload' in sys.argv))
