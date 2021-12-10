from flask import Blueprint, render_template, request, flash, jsonify
from flask_login import login_required, current_user
from . import db
import json
from .models import User, Anime, MyList, Homepage

views = Blueprint('views', __name__)



@views.route('/')
@login_required
def homepage():
    all_anime = Anime.query.all()
    return render_template("homepage.html", anime = all_anime, user=current_user)
