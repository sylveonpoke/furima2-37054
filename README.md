# テーブル設計

## users テーブル

| Column                    | Type   | Options                   |
| ------------------        | ------ | ------------------------- |
| email                     | string | null: false, unique: true |
| encrypted_password        | string | null: false               |
| nickname                  | string | null: false               |
| family_name               | string | null: false               |
| first_name                | string | null: false               |
| family_name_kana          | string | null: false               |
| first_name_kana           | string | null: false               |
| date_of_birth             | date   | null: false               |

### Association

- has_many :items
- has_many :buys

## items テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| item_explanation   | text       | null: false                    |
| item_name          | string     | null: false                    |
| condition_id       | integer    | null: false                    |
| prefecture_id      | integer    | null: false                    |
| category_id        | integer    | null: false                    |
| price              | integer    | null: false                    |
| delivery_charge_id | integer    | null: false                    |
| time_required_id   | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :buy

## buys テーブル

| Column           | Type       | Options                        |
| ---------------- | ------     | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| item             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| apartment          | string     |                                | 
| post_code          | string     | null: false                    |
| phone_number       | string     | null: false                    |
| buy                | references | null: false, foreign_key: true |

### Association

- belongs_to :buy