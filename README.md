# テーブル設計

## users テーブル

| Column             | Type       | Options                  |
| ------------------ | ---------- | ------------------------ |
| name               | string     | null: false              |
| email              | string     | null: false, unique:true |
| encrypted_password | string     | null: false              |

### Association

* has_many :records
* has_many :methods
* has_many :relationships
* has_many :followings, through: :relationships, source: :follow
* has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
* has_many :followers, through: :reverse_of_relationships, source: :user

## records テーブル 

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| date             | references | null: false                    |
| ashi             | integer    | null: false                    |
| pair             | integer    | null: false                    |
| pair_other       | string     | null: false                    |
| entry_rate       | float      | null: false                    |
| exit_rate        | float      | null: false                    |
| entry_basis      | text       | null: false                    |
| issue            | integer    | null: false                    |
| lose_reason      | integer    | null: false                    |
| lose_reason_text | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### association

* belongs_to :user

## methods テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| issue            | integer    | null: false                    |
| ashi             | integer    | null: false                    |
| pair             | integer    | null: false                    |
| pair_other       | string     | null: false                    |
| overview         | string     | null: false                    |
| overview_content | text       | null: false                    |
| entry            | text       | null: false                    |
| exit             | text       | null: false                    |
| summary          | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### association

* belongs_to :user

## followテーブル

| Column    | Type       | Options                           |
| --------- | ---------- | --------------------------------- |
| follow_id | references | foreign_key: { to_table: :users } |
| user_id   | references | null: false, foreign_key: true    |

### Association

* belongs_to :user
* belongs_to :follow, class_name: 'User'