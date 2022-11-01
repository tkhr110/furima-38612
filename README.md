# README

# テーブル設計
## usersテーブル
| Column             |  Type   | Option       |
| ------------------ | ------- | ------------ |
| nickname           | string  | null: false  |
| email              | string  | null: false, unique: true
| encrypted_password | string  | null: false  |
| first_name         | string  | null: false  |
| first_name_kana    | string  | null: false  |
| last_name          | string  | null: false  |
| last_name_kana     | string  | null: false  |
| date_of_birth      | date    | null: false  |
### Association
* has_many :items
* has_many :orders

## itemsテーブル
| Column      | Type     | Options     |
| ---------   | -------  | ----------- |
| item_name   | string   | null: false |
| explanation | string   | null: false |
| category_id | integer  | null: false |
| condition_id| integer  | null: false |
| d_fee_id    | integer  | null: false |
| area_id     | integer  | null: false |
| d_days_id   | integer  | null: false |
| price       | integer  | null: false |
| user        |references| null: false, foreign_key: true
### Association
* belongs_to : user
* has_one : order

## addressesテーブル
| Column      | Type     | Options     |
| ---------   | -------  | ----------- |
| post_code   | string   | null: false |
| area_id     | integer  | null: false |
| municipality| string   | null: false |
| detail      | string   | null: false |
| building    | string   |             |
| phone_number| string   | null: false |
| order       |references| null: false, foreign_key: true
### Association
* belongs_to : order


## ordersテーブル
| Column     |Type       |Options     |
| -----------|---------  |------------|
| item       | references|null: false, foreign_key :true
| user       | references|null: false, foreign_key :true
### Association
* belongs_to : user
* belongs_to : item
* has_one : address