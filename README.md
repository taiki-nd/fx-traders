# アプリケーション名

fx-traders

# アプリケーション概要

* 取引記録の投稿
* 取引手法の投稿
* コメントの投稿
以上3つが基本機能になります。

# URL

# テスト用アカウント

# 利用方法

# 目指した課題解決

コロナ禍で投資を始めている人が多くいる中、その記録をつける人は少なく増やすべき資産を減らしている人が多いと予想されます。
本アプリでは、取引記録を一覧しまとめることで次の取引に生かすことができるだけでなく、
その記録を公開し他ユーザーから意見をもらいながら取引に生かすことができ、資産を増やすための手がかりになるものと考えます。

# 要件定義

| 優先順位(高：3、中：2、低：1) | 機能 | 目的 | 詳細 | ストーリー | 見積もり(所要時間) | 
| ------------------------- | --- | --- | --- | -------- | --------------|
| 3 | ユーザー管理機能 | ユーザー情報の管理 |  |  | 3 |
| 3 | ユーザー詳細機能 | ユーザー情報の詳細表示 | ユーザー登録なしでもコメントを可能とする, ajax通信で行う | ユーザーが投稿した内容を表示, 全体勝率、通貨ペア別勝率の表示, 弱みの表示, 平均獲得pipsの推移, gem 'chartkick'の利用 | 20 |
| 3 | 取引報告投稿機能 | 自身の取引の投稿機能 | active hash, active storageを使って実装する | 必要項目入力後、投稿ボタンのクリックで投稿が完了する | 5 |
| 3 | 取引報告一覧機能 | 投稿した取引報告を一覧表示 | image, pair, pips, user.nameの表示 | 投稿クリックで詳細ページに遷移 | 5 |
| 3 | 取引報告詳細機能 | 投稿した取引報告の詳細表示 | 入力内容の表示 | 投稿内容を詳しく見れる | 5 |
| 3 | 取引報告編集機能 | 投稿した取引報告の編集 |  | 必要項目入力後、更新ボタンのクリックで投稿が完了する | 5 |
| 3 | 取引報告削除機能 | 投稿した取引報告の削除 | 投稿者のみが削除可能 | 削除ボタンを押し確認ダイアログで削除をクリックすることで投稿の削除が完了する | 5 |
| 3 | 取引手法投稿機能 | 自身の取引の投稿機能 | active hash, active storageを使って実装する | 必要項目入力後、投稿ボタンのクリックで投稿が完了する | 5 |
| 3 | 取引手法一覧機能 | 投稿した取引報告を一覧表示 | image, pair, pips, user.nameの表示 | 投稿クリックで詳細ページに遷移 | 5 |
| 3 | 取引手法詳細機能 | 投稿した取引報告の詳細表示 | 入力内容の表示 | 投稿内容を詳しく見れる | 5 |
| 3 | 取引手法編集機能 | 投稿した取引報告の編集 |  | 必要項目入力後、更新ボタンのクリックで投稿が完了する | 5 |
| 3 | 取引手法削除機能 | 投稿した取引報告の削除 | 投稿者のみが削除可能 | 削除ボタンを押し確認ダイアログで削除をクリックすることで投稿の削除が完了する | 5 |
| 2 | コメント投稿機能 | 各投稿へのコメント機能 | ユーザー登録なしでもコメントを可能とし、それをajax通信で行う | | 10 |
| 2 | コメント削除機能 | コメントの削除機能 | 誰でも削除可能とする | 削除ボタンを押し確認ダイアログで削除をクリックすることで投稿の削除が完了する | 5 |
| 2 | フォロー機能 | 参考にしたいユーザーへのアクセスを容易にする | 削除ボタンを押し確認ダイアログで削除をクリックすることで投稿の削除が完了する | フォローボタンでフォローできるようにする | 10 |


# テーブル設計

## user テーブル

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

## record テーブル 

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| date             | date       | null: false                    |
| ashi_id          | integer    | null: false                    |
| pair_id          | integer    | null: false                    |
| entry_rate       | float      | null: false                    |
| exit_rate        | float      | null: false                    |
| pips             | float      | null: false                    |
| entry_basis      | text       | null: false                    |
| issue_id         | integer    | null: false                    |
| lose_reason_id   | integer    | null: false                    |
| lose_reason_text | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### association

* belongs_to :user
* has_many :comments

## method テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| issue_id         | integer    | null: false                    |
| ashi_id          | integer    | null: false                    |
| pair_id          | integer    | null: false                    |
| overview         | string     | null: false                    |
| overview_content | text       | null: false                    |
| entry            | text       | null: false                    |
| exit             | text       | null: false                    |
| summary          | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### association

* belongs_to :user
* has_many :methods

## comment テーブル

| Column | Type | Options     |
| ------ | ---- | ----------- |
| text   | text | null: false |

### Association

* belongs_to :record
* belongs_to :method

## follow テーブル

| Column    | Type       | Options                           |
| --------- | ---------- | --------------------------------- |
| follow_id | references | foreign_key: { to_table: :users } |
| user_id   | references | null: false, foreign_key: true    |

### Association

* belongs_to :record
* belongs_to :method

## er図
[![Image from Gyazo](https://i.gyazo.com/33c6f69bf011a0d37f0a9e569498da2d.png)](https://gyazo.com/33c6f69bf011a0d37f0a9e569498da2d)