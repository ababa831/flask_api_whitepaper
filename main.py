from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    return 'Hello, World!'


if __name__ == '__main__':
    # 外部アクセスには，hostオプション引数が必要
    # Ref: http://flask.pocoo.org/docs/0.12/quickstart/
    app.run(host='0.0.0.0')
