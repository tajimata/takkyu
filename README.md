# README

現在未だデプロイできていない為、GIF画像になります。

[![Image from Gyazo](https://i.gyazo.com/9b74afea35a88e462795401eeccd1447.gif)](https://gyazo.com/9b74afea35a88e462795401eeccd1447)

[![Image from Gyazo](https://i.gyazo.com/08506e830d17c47b339884f353a06f59.gif)](https://gyazo.com/08506e830d17c47b339884f353a06f59)

[![Image from Gyazo](https://i.gyazo.com/2c09e4855e666dba4c0c5efbe01a2438.gif)](https://gyazo.com/2c09e4855e666dba4c0c5efbe01a2438)

[![Image from Gyazo](https://i.gyazo.com/159c9858f04fec638c0fbe898737c289.gif)](https://gyazo.com/159c9858f04fec638c0fbe898737c289)

## アプリケーションの概要

### 名前
TableTennis

### 概要
ラケットとラバーを合わせた、<br>
卓球用具のレビューサイトです。

### 作成理由
①ラケットとラバーを貼りあわせた時のレビューサイトを作成したかった為。<br>
    多くのレビューサイトは用具単体での評価をつけることが多いが、<br>
    肝心の実戦で使うラケットとラバーを貼りあわせた時のレビューサイトがなかったため<br>
    需要があると感じ、作成しました。

②見た目をスタイリッシュにして、卓球へのイメージを更に改善したかった為。<br>
    卓球に長年定着していた「地味」というイメージを払拭したいという思いがあります。<br>
    まずはデザインからでも洗練にして、卓球を少しでもかっこよく感じてほしいと思い<br>
    製作しました。<br>




## 機能一覧

### 基本機能
投稿一覧を見る（ページネーション実装）<br>
投稿の詳細(レビュー内容)を見る

### ログインして使える機能
レビューの登録<br>
レビューの削除<br>
レビューの編集<br>
マイページの編集<br>

### 実装予定の機能

プロ選手の用具集<br>
検索機能<br>
メーカーのサイトへのリンク集<br>
画像を複数枚投稿できるようにする<br>
画像投稿時のトリミング機能<br>


## 使用技術
ruby 2.5.1<br>
Ruby On Rails 5.2.3<br>

### 言語・フレームワーク
ruby 2.5.1<br>
Ruby On Rails 5.2.3<br>

### データベース
MySQL2<br>

### 主要な技術
フロント :/HTML/SCSS<br>
ログイン機能 : gem 'devise'<br>
ページネーション : gem 'kaminari'<br>
デバッグ : gem 'pry-rails'<br>
グラフ : gem 'lazy_high_charts' <br>














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

### ラケット

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


