from flask import Blueprint, render_template, request, flash, redirect, url_for, session
from .models import User, Homepage, mylist
from sqlalchemy import desc
from werkzeug.security import generate_password_hash, check_password_hash
from . import db
from flask_login import login_user, login_required, logout_user, current_user

auth = Blueprint('auth', __name__)


@auth.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form.get('email')
        password = request.form.get('user_pass')

        user = User.query.filter_by(email=email).first()
        if user:
            if check_password_hash(user.password, password):
                flash('Logged in successfully!', category='success')
                login_user(user, remember=True)
                return redirect(url_for('views.homepage', user=current_user))
            else:
                flash('Incorrect password, try again.', category='error')
        else:
            flash('Email does not exist.', category='error')
    return render_template("login.html", user=current_user)


@auth.route('/logout')
@login_required
def logout():
    logout_user()
    return redirect(url_for('auth.login'))


@auth.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
    if request.method == 'POST':
        email = request.form.get('email')
        first_name = request.form.get('firstName')
        password1 = request.form.get('password1')
        password2 = request.form.get('password2')

        amountOfUsers = User.query.count()
        amountOfUsers = amountOfUsers + 1
        user = User.query.filter_by(email=email).first() is not None
        # checks the requirements that the inputs are 
        if user:
            flash('Email already exists.', category='error')
        elif len(first_name) < 2:
            flash('First name must be greater than 1 character.', category='error')
        elif password1 != password2:
            flash('Passwords don\'t match.', category='error')

        # IF USER DOESNT EXIST IN DB, THEN ADD TO DB
        new_user = User(id=amountOfUsers, email=email, name=first_name, password=generate_password_hash(password1, method='sha256'))
        db.session.add(new_user)
        db.session.commit()
        login_user(new_user, remember=True)
        flash('Account created!', category='success')
        return redirect(url_for('views.homepage', user=current_user))
    return render_template("sign_up.html", user=current_user)


@auth.route('/my-anime-list', methods=['GET', 'POST'])
def my_anime_list():
    headings = ("Title", "", "Overall Rating", "My Rating", "My Review")
    animes = mylist.query.order_by(desc(mylist.score)).all()
    if request.method == "POST":
        id = request.form.get("remove")
        anime = mylist.query.get(id)
        db.session.delete(anime)
        db.session.commit()
        animes = mylist.query.order_by(desc(mylist.score)).all()
    return render_template("my-anime-list.html", user=current_user, table_headings=headings, data=animes)
