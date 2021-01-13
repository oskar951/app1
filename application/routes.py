from flask import render_template
from application import app
import random
import os


@app.route('/')
@app.route('/home')
def home():
    list1 = ['Killer', 'Boss', 'Bad']

    username = random.choice(list1)

    return render_template('home.html', title="Home Page", username = username)

