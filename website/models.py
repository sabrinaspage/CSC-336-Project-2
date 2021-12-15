from . import db
from flask_login import UserMixin


class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(400))
    password = db.Column(db.String(400))
    name = db.Column(db.String(400))


class Anime(db.Model):
    uid = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    type = db.Column(db.String(6))
    synopsis = db.Column(db.String(2745))
    genre = db.Column(db.String(153))
    aired = db.Column(db.String(28))
    episodes = db.Column(db.Float)
    members = db.Column(db.Integer)
    popularity = db.Column(db.Integer)
    ranked = db.Column(db.Float)
    score = db.Column(db.String(18))
    img_url = db.Column(db.String(56))
    url_link = db.Column(db.String(138))


class mylist(db.Model):
    id = db.Column(db.Integer)
    uid = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    img_url = db.Column(db.String(56))
    score = db.Column(db.String(18))
    myscore = db.Column(db.String(18))
    mycomment = db.Column(db.String(400))

class Homepage(db.Model):
    uid = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    img_url = db.Column(db.String(56))
    genre = db.Column(db.String(153))
    episodes = db.Column(db.Float)
    score = db.Column(db.String(18))
    link = db.Column(db.String(138))


class top(db.Model):
    uid = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    img_url = db.Column(db.String(56))
    genre = db.Column(db.String(153))
    episodes = db.Column(db.Float)
    score = db.Column(db.String(18))
    link = db.Column(db.String(138))


class ova(db.Model):
    uid = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    img_url = db.Column(db.String(56))
    genre = db.Column(db.String(153))
    episodes = db.Column(db.Float)
    score = db.Column(db.String(18))
    link = db.Column(db.String(138))


class movie(db.Model):
    uid = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
    img_url = db.Column(db.String(56))
    genre = db.Column(db.String(153))
    episodes = db.Column(db.Float)
    score = db.Column(db.String(18))
    link = db.Column(db.String(138))
