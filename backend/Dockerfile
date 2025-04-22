# コンテナのベースイメージ
# Python 3.12.4がインストールされたDebian Bullseye（Debian 11）をベースイメージとして使用
FROM python:3.12.10-bullseye

# パッケージリストの更新
# Debian OSのパッケージリスト情報を最新化する
RUN apt-get update

# コンテナ内にappフォルダを作成
RUN mkdir /app

# 作業ディレクトリの設定
WORKDIR /app

# まず requirements.txt をコピーして依存関係をインストール
# (ローカルの app/requirements.txt をコンテナの /app/ にコピー)
COPY ./app/requirements.txt .
RUN pip install -r requirements.txt

# 次にアプリケーションコード全体をコピー
# (ローカルの app フォルダの中身をコンテナの /app/ にコピー)
COPY ./app /app

# アプリが使用するポート番号 (ここでは4000) を指定 (ドキュメント目的)
EXPOSE 4000

# Gunicornを使って 'app.py' の中の 'app' インスタンスを実行
# 0.0.0.0 でコンテナ外部からのアクセスを受け付け、ポート4000で待つ
CMD ["gunicorn", "--bind", "0.0.0.0:4000", "app:app"]
