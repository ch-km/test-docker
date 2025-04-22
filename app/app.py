from flask import Flask

# Flask アプリケーションを作成
app = Flask(__name__)

# ルートURL ('/') にアクセスがあった場合に実行される関数
@app.route('/')
def hello_world():
    # "Hello World!" という文字列を返す
    return 'Hello World!'

# Gunicornから実行されるので、ここでは app.run() は書かない