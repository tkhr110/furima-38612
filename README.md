# README

# テーブル設計
## usersテーブル
| Column             |  Type   | Option       |key
| ------------------ | ------- | ------------ |
| nickname           | string  | null :false  |UNI
| email              | string  | null :false  |
| encrypted_password | string  | null :false  |
| first_name         | string  | null :false  |
| first_name_kana    | string  | null :false  |
| last_name          | string  | null :false  |
| last_name_kana     | string  | null :false  |
| date_of_birth      | date    | null :false  |

## itemsテーブル
| Column      | Type     | Options     |
| ---------   | -------  | ----------- |
| item_name   | string   | null :false |
| category_id | integer  | null :false |
| condition_id| integer  | null :false |
| d_fee_id    | integer  | null :false |
| area_id     | integer  | null :false |
| d_days_id   | integer  | null :false |
| price       | integer  | null :false |
| user        |references| null :false, foreign_key :true
| order       |references| null :false, foreign_key :true

## adressesテーブル
| Column      | Type     | Options     |
| ---------   | -------  | ----------- |
| post_code   | integer  | null :false |
| area_id     | integer  | null :false |
| municipality| string   | null :false |
| detail      | string   | null :false |
| building    | text     |             |
| phone_number| string   | null :false |
| user        |references| null :false, foreign_key :true
| order       |references| null :false, foreign_key :true(belongs_to)

## ordersテーブル
| Column     |Type       |Options     |
| -----------|---------  |------------|
| item       | references|null :false, foreign_key :true
| user       | references|null :false, foreign_key :true(has_one)