# 基本のイメージを指定
FROM ubuntu:20.04

# 環境の更新と必要なツールのインストール
RUN apt-get update && apt-get install -y \
    wget \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# HSPのインストール
RUN wget http://hsp.tv/download/hsp3/hsp3.zip && \
    unzip hsp3.zip && \
    cd hsp3 && \
    ./install.sh

# 作業ディレクトリの設定
WORKDIR /workspace
