from flask import Blueprint, render_template, request, flash, redirect, url_for, session 
from .models import User, Courses, Applications
from werkzeug.security import generate_password_hash, check_password_hash
from . import db
from flask_login import login_user, login_required, logout_user, current_user
from sqlalchemy import desc

auth = Blueprint('auth', __name__)


@auth.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form.get('email')
        password = request.form.get('password')

        user = User.query.filter_by(email=email).first()
        if user:
            if check_password_hash(user.password, password):
                flash('Logged in successfully!', category='success')
                login_user(user, remember=True)
                if user.usertype == "Student":
                    return render_template("student-management.html", user=current_user)
                elif user.usertype == "Instructor":
                    return render_template("instructor-management.html", user=current_user)
                elif user.usertype == "Registrar":
                    return render_template("registrar-management.html", user=current_user)
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


@auth.route('/apply', methods=['GET', 'POST'])
def apply():
    if request.method == 'POST':
        # TODO: look up in the market code how to setup a template for each of the buttoms
        # right now both buttons redirect to apply student
        if request.form['submit_button'] == 'student':
            return redirect(url_for('auth.apply_student'))
        elif request.form['submit_button'] == 'instructor':
            return redirect(url_for('auth.apply_instructor'))
        else:
            pass
    else:
        return render_template("apply.html", user=current_user)

@auth.route('/apply-student', methods = ['GET', 'POST'])
def apply_student(): 
    if request.method == 'POST':
        gpa = request.form.get('gpa') 
        name = request.form.get('fullname')
        new_application = Applications(status = 2, gpa_student = gpa, name = name, type = "Student")
        db.session.add(new_application) 
        db.session.commit()
        flash("Application submitted", category="success")
        return render_template("apply-student.html", user = current_user)
    else: 
        return render_template("apply-student.html", user = current_user)


@auth.route('/apply-instructor', methods = ['GET', 'POST'])
def apply_instructor():
    if request.method == 'POST':
        subject = request.form.get('subject')
        name = request.form.get('fullname')
        new_application = Applications(status = 2, subject_instructor = subject, name = name, type = "Instructor")
        db.session.add(new_application) 
        db.session.commit()
        flash("Application submitted", category="success")
        return render_template('apply-instructor.html', user = current_user)
    else:
        return render_template('apply-instructor.html', user = current_user)

@auth.route('/application-status', methods = ['GET', 'POST'])
def application(): 
    if request.method == 'POST':
        try:
            name = request.form.get("fullname")
            curr = Applications.query.filter_by(name=name).order_by(Applications.status).first()
            if curr:
                if curr.status == 0:
                    flash("Application accepted", category="success")
                    session["var"] = curr.type      # stores the user type by calling the Column of the db
                    return redirect(url_for("auth.sign_up"))
                if curr.status == 1:
                    flash("Application not accepted", category="error")
                if curr.status == 2:
                    flash("Application pending", category="error") 
            return redirect(url_for("auth.application")) 
        except Exception as e:
            flash("No application", category="error")
            return redirect(url_for("auth.application")) 
    else:
        return render_template('application-status.html', user = current_user) 


@auth.route('/sign-up', methods=['GET', 'POST'])
def sign_up():
    if request.method == 'POST':
        email = request.form.get('email')
        first_name = request.form.get('firstName')
        password1 = request.form.get('password1')
        password2 = request.form.get('password2')
        usertype = session.get('var', None)    # this gets 'var' from application() and uses it to get the user type 

        user = User.query.filter_by(email=email).first()
        # checks the requirements that the inputs are 
        if user:
            flash('Email already exists.', category='error')
        # elif len(email) < 4:
        #     flash('Email must be greater than 3 characters.', category='error')
        elif len(first_name) < 2:
            flash('First name must be greater than 1 character.', category='error')
        elif password1 != password2:
            flash('Passwords don\'t match.', category='error')
        # elif len(password1) < 7:
        #     flash('Password must be at least 7 characters.', category='error')
        new_user = User(email = email, first_name = first_name, password = generate_password_hash(password1, method='sha256'), usertype = usertype)
        db.session.add(new_user)
        db.session.commit()
        login_user(new_user, remember=True)
        flash('Account created!', category='success')
        if usertype == 'Student':
            return render_template("student-management.html", user = current_user)
        if usertype == 'Instructor':
            return render_template("instructor-management.html", user = current_user)
        # you cannot sign up as a registrar -> to test you can go to /sign-up 
        else:
            return render_template("registrar-management.html", user = current_user)
    return render_template("sign_up.html", user=current_user)


# REMOVE LATER





@auth.route('/registrar-make', methods=['GET', 'POST'])
def make_registrar():
    user = User.query.filter_by(email="r@gmail.com").first()
    if user:
        flash("Already created it", category="success")
    else: 
        flash("Creating ...", category="warning")
        new_user = User(email = "r@gmail.com", first_name = "RegistrarT", password = generate_password_hash("1", method='sha256'), usertype = "Registrar")
        db.session.add(new_user)
        db.session.commit()
        flash("Created!", category="success")
    return render_template("make-user.html", user = current_user)

@auth.route('/student-make', methods=['GET', 'POST'])
def make_student():
    user = User.query.filter_by(email="s@gmail.com").first()
    if user:
        flash("Already created it", category="success")
    else:
        flash("Creating ...", category="warning")
        new_user = User(email = "s@gmail.com", first_name = "Student", password = generate_password_hash("1", method='sha256'), usertype = "Student")
        db.session.add(new_user)
        db.session.commit()
        flash("Created!", category="success")
    return render_template("make-user.html", user = current_user)


@auth.route('/instructor-make', methods=['GET', 'POST'])
def make_instructor():
    user = User.query.filter_by(email="i@gmail.com").first()
    if user:
        flash("Already created it", category="success")
    else:
        flash("Creating ...", category="warning")
        new_user = User(email = "i@gmail.com", first_name = "Instructor", password = generate_password_hash("1", method='sha256'), usertype = "Instructor")
        db.session.add(new_user)
        db.session.commit()
        flash("Created!", category="success")
    return render_template("make-user.html", user = current_user)




@auth.route('/courses-make', methods=['GET', 'POST'])
def make_courses():
    course = Courses.query.filter_by(name = "Computer Cooking #1").first()
    if course:
        flash("Already created it", category="success")
    else:
        flash("Creating ...", category="warning")
        new_user = Courses(name = "Computer Cooking #1", course_id = "CSC 103020", instructor = "Bob Joe Cat", semester = "Fall 2021")
        db.session.add(new_user)
        db.session.commit()
        new_user = Courses(name = "Computer Cooking #2", course_id = "CSC 103021", instructor = "Bob Joe Star", semester = "Fall 2022")
        db.session.add(new_user)
        db.session.commit()
        new_user = Courses(name = "Computer Cooking #3", course_id = "CSC 103022", instructor = "Bob Joe Pan", semester = "Fall 2023")
        db.session.add(new_user)
        db.session.commit()
        new_user = Courses(name = "Computer Cooking #4", course_id = "CSC 103023", instructor = "Bob Joe Joe", semester = "Fall 2024")
        db.session.add(new_user)
        db.session.commit()
        new_user = Courses(name = "Computer Cooking #5", course_id = "CSC 103024", instructor = "Bob Joe Bob", semester = "Fall 2025")
        db.session.add(new_user)
        db.session.commit()
        new_user = Courses(name = "Computer Cooking #6", course_id = "CSC 103025", instructor = "Bob Joe Jack", semester = "Fall 2026")
        db.session.add(new_user)
        db.session.commit()
        new_user = Courses(name = "Computer Cooking #7", course_id = "CSC 103026", instructor = "Bob Joe Dog", semester = "Fall 2027")
        db.session.add(new_user)
        db.session.commit()
        flash("Created!", category="success")
    return render_template("courses-make.html", user = current_user) 

@auth.route('/courses', methods=['GET', 'POST'])
def courses():
    return render_template("courses.html", user=current_user)

# Some reason this doesnt work --
@auth.route('/search-classes', methods=['GET', 'POST'])
def search_classes():
    return render_template("search-classes.html", user=current_user)

@auth.route('/course-management', methods=['GET', 'POST'])
def course_management():
    return render_template("course-management.html", user=current_user)


@auth.route('/student-view', methods=['GET', 'POST'])
def student_view():
    return render_template("student-view.html", user=current_user)

@auth.route('/applications', methods=['GET', 'POST'])
def applications():
    apps = Applications.query.filter_by(status=2).order_by( desc(Applications.type)).all()
    if request.method == 'POST':
        if request.form.get('submit_button'):
            id = request.form.get('submit_button')
            flash(id, category="success")
            change = Applications.query.get(id)
            change.status = 1
            db.session.commit()
            flash("Rejected", category="error")
            apps = Applications.query.filter_by(status=2).order_by( desc(Applications.type)).all()
            return render_template("applications.html", app = apps, user=current_user)

        elif request.form.get('submit_button1'):
            id = request.form.get('submit_button1')
            remove = Applications.query.get(id) 
            remove.status = 0
            db.session.commit()
            flash("Accepted", category="success")
            apps = Applications.query.filter_by(status=2).order_by( desc(Applications.type)).all()
            return render_template("applications.html", app = apps, user=current_user)
    else:
        return render_template("applications.html", app = apps, user=current_user)


@auth.route('/warnings', methods=['GET', 'POST'])
def warnings():
    return render_template("warnings.html", user=current_user)

####################### how do i add a "Warning" section to the upper bar of the Instructor page
#@auth.route('/instructor-warns', methods=['GET', 'POST'])
#def instructor_warns():
#    return render_template("instructor-warns.html", user=current_user)



# for the management pages
@auth.route('/student-management', methods=['GET', 'POST'])
def student_management():
    if request.method == 'POST':
        if request.form['submit_button'] == 'class-overview':
            return redirect(url_for('auth.class_overview'))
        elif request.form['submit_button'] == 'student-instructor-complaint':
            return redirect(url_for('auth.student_instructor_complaint'))
        elif request.form['submit_button'] == 'student-student-complaint':
            return redirect(url_for('auth.student_student_complaint'))
        elif request.form['submit_button'] == 'student-warnings':
            return redirect(url_for('auth.student_warnings'))
        elif request.form['submit_button'] == 'records':
            return redirect(url_for('auth.records'))
        else:
            return render_template("student-management.html", user=current_user)
    else:
        return render_template("student-management.html", user=current_user)
    
@auth.route('/class-overview', methods=['GET', 'POST'])
def class_overview():
    if request.method == 'POST':
        pass
    else:
        return render_template("class-overview.html", user=current_user)
    
@auth.route('/student-instructor-complaint', methods=['GET', 'POST'])
def student_instructor_complaint():
    if request.method == 'POST':
        pass
    else:
        return render_template("student-instructor-complaint.html", user=current_user)
    
@auth.route('/student-student-complaint', methods=['GET', 'POST'])
def student_student_complaint():
    if request.method == 'POST':
        pass
    else:
        return render_template("student-student-complaint.html", user=current_user)
    
@auth.route('/student-warnings', methods=['GET', 'POST'])
def student_warnings():
    if request.method == 'POST':
        pass
    else:
        return render_template("student-warnings.html", user=current_user)   
    
@auth.route('/records', methods=['GET', 'POST'])
def records():
    if request.method == 'POST':
        pass
    else:
        return render_template("records.html", user=current_user) 


@auth.route('/instructor-management', methods=['GET', 'POST'])
def instructor_management():
    if request.method == 'POST':
        if request.form['submit_button'] == 'grade-students':
            return redirect(url_for('auth.grade_students'))
        elif request.form['submit_button'] == 'my-courses':
            return redirect(url_for('auth.my_courses'))
        elif request.form['submit_button'] == 'student-records':
            return redirect(url_for('auth.student_records'))
        elif request.form['submit_button'] == 'instructor-student-complaint':
            return redirect(url_for('auth.instructor_student_complaint'))
        elif request.form['submit_button'] == 'instructor-warnings':
            return redirect(url_for('auth.instructor_warnings'))
        else:
            return render_template("instructor-management.html", user=current_user)
    else:
        return render_template("instructor-management.html", user=current_user)


@auth.route('/grade-students', methods=['GET', 'POST'])
def grade_students():
    if request.method == 'POST':
        pass
    else:
        return render_template("grade-students.html", user=current_user)


@auth.route('/my-courses', methods=['GET', 'POST'])
def my_courses():
    if request.method == 'POST':
        pass
    else:
        return render_template("my-courses.html", user=current_user)


@auth.route('/student-records', methods=['GET', 'POST'])
def student_records():
    if request.method == 'POST':
        pass
    else:
        return render_template("student-records.html", user=current_user)
    
@auth.route('/instructor-student-complaint', methods=['GET', 'POST'])
def instructor_student_complaint():
    if request.method == 'POST':
        pass
    else:
        return render_template("instructor-student-complaint.html", user=current_user)
    
@auth.route('/instructor-warnings', methods=['GET', 'POST'])
def instructor_warnings():
    if request.method == 'POST':
        pass
    else:
        return render_template("instructor-warnings.html", user=current_user)  

@auth.route('/registrar-management', methods=['GET', 'POST'])
def registrar_management():
    if request.method == 'POST':
        if request.form['submit_button'] == 'evaluate-instructor':
            return redirect(url_for('auth.evaluate_instructor'))
        elif request.form['submit_button'] == 'cancel-course':
            return redirect(url_for('auth.cancel_course'))
        elif request.form['submit_button'] == 'student-suspension':
            return redirect(url_for('auth.student_suspension'))
        elif request.form['submit_button'] == 'instructor-suspension':
            return redirect(url_for('auth.instructor_suspension'))
        elif request.form['submit_button'] == 'student-termination':
            return redirect(url_for('auth.student_termination'))
        elif request.form['submit_button'] == 'class-ratings':
            return redirect(url_for('auth.class_ratings'))
        else:
            return render_template("registrar-management.html", user=current_user)
    else:
        return render_template("registrar-management.html", user=current_user)


@auth.route('/evaluate-instructor', methods=['GET', 'POST'])
def evaluate_instructor():
    if request.method == 'POST':
        pass
    else:
        return render_template("evaluate-instructor.html", user=current_user)


@auth.route('/cancel-course', methods=['GET', 'POST'])
def cancel_course():
    if request.method == 'POST':
        pass
    else:
        return render_template("course-cancellation.html", user=current_user)


@auth.route('/student-suspension', methods=['GET', 'POST'])
def student_suspension():
    if request.method == 'POST':
        pass
    else:
        return render_template("student-suspension.html", user=current_user)


@auth.route('/instructor-suspension', methods=['GET', 'POST'])
def instructor_suspension():
    if request.method == 'POST':
        pass
    else:
        return render_template("instructor-suspension.html", user=current_user)


@auth.route('/student-termination', methods=['GET', 'POST'])
def student_termination():
    if request.method == 'POST':
        pass
    else:
        return render_template("student-termination.html", user=current_user)


@auth.route('/class-ratings', methods=['GET', 'POST'])
def class_ratings():
    if request.method == 'POST':
        pass
    else:
        return render_template("class-ratings.html", user=current_user)