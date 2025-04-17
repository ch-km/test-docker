FROM python:3.12.10-bullseye

# --- ↓↓↓ ここから vscode ユーザー作成用のコマンド ↓↓↓ ---

# パッケージリストを更新して、sudoコマンドを使えるようにインストールします
RUN apt-get update && apt-get install -y sudo \
    # 'vscode' という名前のユーザーを作成します (-m でホームディレクトリも作成)
    && useradd -m -s /bin/bash vscode \
    # 作成した 'vscode' ユーザーがパスワードなしで sudo コマンドを実行できるよう許可します
    && echo "vscode ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vscode \
    && chmod 0440 /etc/sudoers.d/vscode \
    # 後片付け
    && rm -rf /var/lib/apt/lists/*

# --- ↑↑↑ ここまで vscode ユーザー作成用のコマンド ↑↑↑ ---

# 作業ディレクトリの設定
WORKDIR /app

# コンテナが終了しないようにする
CMD ["sleep", "infinity"]