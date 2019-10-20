# README

[![Image from Gyazo](https://i.gyazo.com/9b74afea35a88e462795401eeccd1447.gif)](https://gyazo.com/9b74afea35a88e462795401eeccd1447)

[![Image from Gyazo](https://i.gyazo.com/08506e830d17c47b339884f353a06f59.gif)](https://gyazo.com/08506e830d17c47b339884f353a06f59)

[![Image from Gyazo](https://i.gyazo.com/2c09e4855e666dba4c0c5efbe01a2438.gif)](https://gyazo.com/2c09e4855e666dba4c0c5efbe01a2438)

[![Image from Gyazo](https://i.gyazo.com/159c9858f04fec638c0fbe898737c289.gif)](https://gyazo.com/159c9858f04fec638c0fbe898737c289)

## アプリケーションの概要

### 名前
TableTennis

### 概要
ラケットとラバーを合わせた、
卓球用具のレビューサイトです。

### 作成理由
・ラケットとラバーを貼りあわせた時のレビューサイトを作成したかった為。
・見た目をスタイリッシュにして、卓球へのイメージを更に改善したかった為。



## 機能一覧

###基本機能
投稿一覧を見る（ページネーション実装）
投稿の詳細(レビュー内容)を見る

###ログインして使える機能
レビューの登録（）
レビューの削除
レビューの編集
マイページの編集(プログラミングに対しての興味関心)


## 使用技術

### 言語・フレームワーク
ruby 2.5.1
Ruby On Rails 5.2.3

### データベース
MySQL2

### 主要な技術

フロント :/HTML/SCSS
ログイン機能 : gem 'devise'
ページネーション : gem 'kaminari'
デバッグ : gem 'pry-rails'
グラフ : gem 'lazy_high_charts' 














## users table

### ユーザー

|     Column     |  Type  |         Options          |
| :------------: | :----: | :----------------------: |
|    nickname    | string |       null: false        |
|     email      | string | null:false, unique: true |
|    password    | string |        null:false        |

### Association

- has_many :rackets

## racket table

### プロフィール

|    Column    |    Type    |     Options      |
|   :-----:    | :--------: | :--------------: |
|     text     |    text    |                  |
|     name     |    text    |                  |
|    image     |    text    |                  |
|    user_id   |   integer  | foreign_key:true |
|    rubber    |    text    |                  |
| rubber_back  |    text    |                  |
|    power     |   integer  |                  |
|     spin     |   integer  |                  |
|   control    |   integer  |                  |
|    weight    |   integer  |                  |
|   general    |   integer  |                  |

### Association

- belongs_to :user


