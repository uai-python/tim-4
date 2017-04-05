from flask import Flask, render_template, session, redirect, url_for, request
from sqlalchemy import func
from models import Question, Guest
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.debug=True
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/jakarta'

db = SQLAlchemy(app)

@app.route('/', methods=['GET','POST'])
def index():
    if 'user' in session:
        fetch_data = Question.query.order_by(func.rand()).limit(1).all()
        user = session['user']
        return render_template('pertanyaan.html', data=fetch_data, user=user)
    else:
        return redirect(url_for("login"))

@app.route('/login', methods=['GET','POST'])
def login():
    if request.method == 'POST':
        session['user'] = request.form['user']
        user = request.form['user']
        jk = request.form['jenis_kelamin']
        Usia = request.form['usia']
        Kotamadya = request.form['kota']
        No_telp = request.form['telp']

        guest = Guest(user, jk, Usia, Kotamadya,No_telp)
        db.session.add(guest)
        db.session.commit()
        
        return redirect(url_for("index"))
    else:
        return render_template('form.html')

@app.route('/test', methods=['GET','POST'])
def test():
    if request.method == 'POST':
        jawaban_nebak = request.form['jawaban']
        Pertanyaan = request.form['pertanyaan']
        Jawaban_asli = request.form['jawaban_asli']
        if jawaban_nebak != Jawaban_asli:
            return render_template('test.html', jawaban_nebak=jawaban_nebak,Jawaban_asli=Jawaban_asli)
        
    return redirect(url_for("index"))
    

@app.route('/logout')
def logout():
    # remove the username from the session if it's there
    session.pop('user', None)
    return redirect(url_for('index'))

if __name__ == "__main__":
    app.run(host='0.0.0.0')

# set the secret key.  keep this really secret:
app.secret_key = 'Rahasia'
