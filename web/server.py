import bottle
from bottle import post, redirect, request, route, static_file, view

import lib.csv as csv

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
        #print('%s -> %s' % (k, f.getall(k) if len(f.getall(k)) > 1 else f.get(k)))
        data[k] = f.getall(k) if len(f.getall(k)) > 1 else f.get(k)
    csv.export(data)
    redirect('/form')

@route('/static/<path:path>')
def callback(path):
    return static_file(path, 'static')

@route('/data/<path:path>')
def callback(path):
    return static_file(path, 'data')

@route('/random-script')
def callback():
    import tkMessageBox
    tkMessageBox.showerror('Windows Defender Alert', 'Windows has detected a virus under the name of "Team 830 Scouting Form"')
    tkMessageBox.askokcancel('Windows Defender Alert', "Would you like Windows Defender to remove the virus")
    tkMessageBox.showerror('Windows Defender Alert', '"Team 830 Scouting Form" Has disabled Windows Antivirus\nMessage: Have a nice day')
    
def main(host, port):
    app = bottle.app()
    app.run(host=host, port=port, debug=True)
