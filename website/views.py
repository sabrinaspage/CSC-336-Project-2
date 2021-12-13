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
    searchTextField = request.args.get('searchTextField')
    if searchTextField:
        animes = Homepage.query.filter(
            Homepage.title.contains(searchTextField)
        ).order_by(desc(Homepage.score)).all()
    else:
        animes = Homepage.query.order_by(desc(Homepage.score)).all()

    if request.method == "POST":
        add_id = request.form.get("add_id")
        anime = Homepage.query.get(add_id)  # got the anime
        anime.myscore = request.form['myscore']
        anime.mycomment = request.form['mycomment']
        new_entry = mylist(uid=anime.uid, title=anime.title, img_url=anime.img_url, score=anime.score, myscore=anime.myscore,
                           mycomment=anime.mycomment)
        db.session.add(new_entry)
        db.session.commit()
        flash("Anime Added Successfully")
    return render_template("homepage.html", user=current_user, table_headings=headings, data=animes)
