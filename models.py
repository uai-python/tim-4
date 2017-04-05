from config import db

class Guest(db.Model):
    __tablename__ = 'data_diri'

    No_User = db.Column(db.Integer, primary_key=True)
    Nama = db.Column(db.String(45))
    Usia = db.Column(db.Integer)
    jk = db.Column(db.Integer)
    Kotamadya = db.Column(db.String(50))
    No_telp = db.Column(db.String(15))

    def __init__(self, Nama, jk, Usia, Kotamadya, No_telp):
        self.Nama = Nama
        self.Usia = Usia
        self.jk = jk
        self.Kotamadya = Kotamadya
        self.No_telp = No_telp

    def __repr__(self):
        return '<Guest %r>' % self.user


class Question(db.Model):
    __tablename__ = 'pertanyaan_jawab'

    id_tanya = db.Column(db.Integer, primary_key=True)
    Pertanyaan = db.Column(db.String(100))
    Jawaban = db.Column(db.Integer)

    def __init__(self, Pertanyaan, Jawaban):
        self.Pertanyaan = Pertanyaan
        self.Jawaban = Jawaban

    def __repr__(self):
        return '<Question %r>' % self.question