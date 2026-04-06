import os


class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY', 'wine-cellar-secret-key')

    DB_HOST = os.environ.get('DB_HOST', '')
    DB_USER = os.environ.get('DB_USER', '')
    DB_PASSWORD = os.environ.get('DB_PASSWORD', '')
    DB_NAME = os.environ.get('DB_NAME', '')

    SQLALCHEMY_DATABASE_URI = "mysql+pymysql://{}:{}@{}/{}".format(DB_USER, DB_PASSWORD, DB_HOST, DB_NAME)
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    USERS = {
        '': '',
        '': ''
    }

    ALLOWED_IPS = ['w.x.y.z', '*']
