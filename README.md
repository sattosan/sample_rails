# Redisのサンプル

## インストール
プロジェクトの作成
```
$ docker-compose run --rm web rails new . --force --database=mysql --skip-bundle
$ docker-compose build
```

config/database.ymlを修正
```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: root
  password: <%= ENV['MYSQL_ROOT_PASSWORD'] %>
  host: db
```

```
$ docker-compose up -d --build
```
※コンテナ立ち上げ時にエラーが起きた場合はコンテナに入って確かめる
```
$ docker-compose run --rm web bash
```

## その他
MySQLへ接続
```
$ myslq -u root -h 127.0.0.1 -p
```
