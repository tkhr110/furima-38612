# README

# テーブル設計
## usersテーブル
| Column             |  Type   | Option       |key
| ------------------ | ------- | ------------ |
| nickname           | string  | null :false  |
| email              | string  | null :false  |UNI
| encrypted_password | string  | null :false  |
| first_name         | string  | null :false  |
| first_name_kana    | string  | null :false  |
| last_name          | string  | null :false  |
| last_name_kana     | string  | null :false  |
| date_of_birth      | date    | null :false  |

## itemsテーブル
| Column      | Type    | Options     |key
| ---------   | ------- | ----------- |
| item_name   | string  | null: false |
| category_id | integer | null: false,
| condition_id| integer | null :false |
| d_fee_id    | integer | null :false |
| area_id     | integer | null :false |
| d_days_id   | integer | null :false |
| price       | integer | null :false |
| user_id     |reference| null :false |foreign_key
| order_id    |reference| null :false |foreign_key

## ordersテーブル
| Column      | Type    | Options     |key
| ---------   | ------- | ----------- |
| p_code      | string  | null: false |
| prefecture  | string  | null :false |
| municipality| string  | null :false |
| adress      | string  | null :false |
| building    | text    |             |
| phone_number| string  | null :false |
| item_id     |reference| null :false |foreign_key
| user_id     |reference| null :false |foreign_key