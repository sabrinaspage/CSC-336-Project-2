from flask import Blueprint, render_template, request, flash, jsonify, redirect, url_for
from flask_login import login_required, current_user
from . import db
from sqlalchemy import desc
import json
from .models import Homepage, mylist


views = Blueprint('views', __name__)



@views.route('/', methods=['GET', 'POST'])
@login_required
def homepage():
    headings = ("Title", "", "Genre", "Episodes", "Overall Rating", "More Info")
    animes = Homepage.query.order_by(desc(Homepage.score)).all()

    if request.method == "POST":
        id = request.form.get("add")
        anime = Homepage.query.get(id) # got the anime
        new_entry = mylist(uid=anime.uid, title=anime.title, img_url=anime.img_url, score=anime.score, myscore="10", mycomment = "good")
        db.session.add(new_entry)
        db.session.commit()
        return redirect(url_for('views.homepage', user=current_user, table_headings=headings, data=animes))
    return render_template("homepage.html", user=current_user, table_headings=headings, data=animes)
