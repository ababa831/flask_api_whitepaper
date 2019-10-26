# flask_api_whitepaper

Docker+FlaskでAPIの`Hello, World!`モックを動かすだけのリポジトリ

用途：何か適当なML APIのモックを作る際の白紙

# 使い方

## 前提

- 使用するOSで，Dockerを動かせるようにしておく．
- 本リポジトリをclone

## インストール

1. `$ docker build . -t flask-helloworld`
2. `$ docker run -d -p 5000:5000 flask-helloworld`

バックグラウンドでモックサーバが立ち上がる．

## APIの動作確認

```
$ curl http://0.0.0.0:5000/
Hello, World!
```

## APIの終了

1. `docker ps`コマンドで起動中のコンテナIDを確認
2. `docker rm ${起動中のコンテナID}`でコンテナ削除