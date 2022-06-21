# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |
| email              | string | null: false, unique: true |


### Association

- has_many :shedules

 ## shedules テーブル

| Column              | Type       | Options                        |
| ------              | ------     | -----------                    |
| title               | string     | null: false                    |
| contents            | text       | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association
 -  belongs_to :user
 
