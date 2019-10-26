FROM python:3.6

# Install packages
RUN pip install flask

WORKDIR /root/

COPY main.py .

# 外部に公開するコンテナ側のポート
EXPOSE 5000

# docker run時に実行するコマンド．ENTRYPOINTは上書き実行できないが，CMDはできる．
ENTRYPOINT [ "python" ]
CMD ["main.py"]