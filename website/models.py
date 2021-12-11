from . import db
from flask_login import UserMixin
from sqlalchemy.sql import func


class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(400), unique=True)
    password = db.Column(db.String(400))
    first_name = db.Column(db.String(400))


class Anime(db.Model):
    uid = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(100))
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


class MyList(db.Model):
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
    more_info = db.Column(db.String(138))
