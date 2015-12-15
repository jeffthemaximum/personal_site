from flask import Flask, render_template
from flask.ext.script import Manager
from flask.ext.bootstrap import Bootstrap
from random import randint

app = Flask(__name__)

manager = Manager(app)
bootstrap = Bootstrap(app)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/byte')
def byte():
    return render_template('byte.html')


@app.route('/survey')
def survey():
    i = str(randint(1,6))
    return render_template('survey.html', i=i)


if __name__ == '__main__':
    manager.run()
