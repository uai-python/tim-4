from flask import Flask
from sqlalchemy import func
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.debug=True
app.config['SQLALCHEMY_TRACK_MODIFICATIONS']=True
app.config['SQLALCHEMY_DATABASE_URI']='mysql+pymysql://root:@localhost/jakarta'

db = SQLAlchemy(app)
