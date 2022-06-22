## アプリケーション名
Schedule Calendar

## アプリケーション概要
スケジュールをカレンダー表で管理し、スケジュールの目標達成詳細をクリックすることで確認できる。

## URL

## テスト用アカウント
・Basic認証パスワード：
・Basic認証ID :
・メールアドレス :
・パスワード :

## 利用方法
### 
 1.新規登録画面からユーザー新規登録を行う。
 2.投稿ボタンからスケジュールタイトル名と内容を入力し投稿する
 3.目標が達成できたらチェックボックスにチェックを入れる。

 ## アプリケーションを作成した背景
 今回、テックキャンプで学んでいて自分の計画性のなさとスケジュール管理の甘さを痛感し、自分が
 どのようにすればこの課題を解決できるのかを考えた結果、アプリケーションとしてスケジュール管
 理表を作って、それが見やすい形で表示できればと思いアプリケーションを開発することにした。

## 洗い出した要件
要件を定義したシート

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |
| email              | string | null: false, unique: true |


### Association

- has_many :schedules

 ## schedules テーブル

| Column              | Type       | Options                        |
| ------              | ------     | -----------                    |
| title               | string     |                                |
| contents            | text       |                                |
| start_time          | datetime   |                                |
| user                | references | null: false, foreign_key: true |

### Association
 - has_many :user
 
