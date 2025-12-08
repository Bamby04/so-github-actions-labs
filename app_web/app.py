from flask import Flask, render_template
import os

app = Flask(__name__)

@app.route('/')
def home():
    env = os.getenv('ENV', 'development')
    version = os.getenv('VERSION', '1.0.0')
    return render_template('index.html', env=env, version=version)

@app.route('/status')
def status():
    return {"status": "ok", "env": os.getenv('ENV', 'development')}