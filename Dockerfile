FROM ubuntu:latest

# 必要なパッケージのインストール
# apt-get update でパッケージリストを更新し、socat をインストール
# -y オプションで確認なしでインストールを実行
# 最後の行は、キャッシュをクリーンアップしてイメージサイズを小さくするためのもの
RUN apt-get update && \
    apt-get install -y socat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*