# コンテナのベースイメージ
# Python 3.12.4がインストールされたDebian Bullseye（Debian 11）をベースイメージとして使用
FROM python:3.12.4-bullseye

# パッケージリストの更新
# Debian OSのパッケージリスト情報を最新化する
RUN apt-get update

# コンテナ内にappフォルダを作成
RUN mkdir /app

# 作業ディレクトリの設定
WORKDIR /app

# requirements.txtをコンテナ内にCOPYする
COPY ./app/requirements.txt .

RUN pip install -r requirements.txt