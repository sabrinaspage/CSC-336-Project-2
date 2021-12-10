from flask import Blueprint, render_template, request, flash, jsonify
from flask_login import login_required, current_user
from . import db
import json

views = Blueprint('views', __name__)



@views.route('/')
@login_required
def homepage():
    return render_template("homepage.html", user=current_user)
