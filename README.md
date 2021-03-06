# アプリケーション名

fx-traders

# アプリケーション概要

取引記録の投稿をもとに分析し現状を把握できるアプリケーション
[![Image from Gyazo](https://i.gyazo.com/738d0540f2f42d0fed7013dbd94743a1.jpg)](https://gyazo.com/738d0540f2f42d0fed7013dbd94743a1)

# URL
https://fxtraders.jp/

# 利用方法
1. 新規登録
右上メニューバーをクリックして新規登録をクリックしてください。
[![Image from Gyazo](https://i.gyazo.com/389de7b014ad186a48d130ce8df2aec0.jpg)](https://gyazo.com/389de7b014ad186a48d130ce8df2aec0)
必要事項の記入してください。
[![Image from Gyazo](https://i.gyazo.com/8f1a2e625d0fa06a9b490c76b00847e3.jpg)](https://gyazo.com/8f1a2e625d0fa06a9b490c76b00847e3)
メールを確認の上、Confirm my accountをクリックし新規登録を完了してください。
[![Image from Gyazo](https://i.gyazo.com/933ae93e459cf6c9d583475c8e3cf689.png)](https://gyazo.com/933ae93e459cf6c9d583475c8e3cf689)

2. ログイン
右上メニューバーをクリックして新規登録をクリックしてください。
[![Image from Gyazo](https://i.gyazo.com/486fd66e73654da53aa23b8294c2712e.jpg)](https://gyazo.com/486fd66e73654da53aa23b8294c2712e)
必要事項の記入してください。
[![Image from Gyazo](https://i.gyazo.com/76d335618b8a82feffc1dbf7fc0282bf.jpg)](https://gyazo.com/76d335618b8a82feffc1dbf7fc0282bf)

3. 投稿方法
右上メニューバーをクリックしてcreate recordをクリックしてください。
[![Image from Gyazo](https://i.gyazo.com/a75ff6e96da07b5eb10d8ac56dd408ac.jpg)](https://gyazo.com/a75ff6e96da07b5eb10d8ac56dd408ac)
必要事項の記入してください。
[![Image from Gyazo](https://i.gyazo.com/5b97f99103badb6ade7091e48b26624e.jpg)](https://gyazo.com/5b97f99103badb6ade7091e48b26624e)

# 目指した課題解決

コロナ禍で投資を始めている人が多くいる中、その記録をつける人は少なく増やすべき資産を減らしている人が多いと予想されます。
本アプリでは、取引記録を一覧しまとめることで次の取引に生かすことができるだけでなく、
その記録を公開し他ユーザーから意見をもらいながら取引に生かすことができ、資産を増やすための手がかりになるものと考えます。

# 実装事項
## 取引記録
* 投稿
* 編集
* 削除
* 検索（gem, ransack）
* 画像投稿（gem, active storage）
* いいね機能（ajax, font awesome）

## 取引手法
* 投稿
* 編集
* 削除
* 検索（rgem, ansack）
* 画像投稿（gem, active storage）
* いいね機能（ajax, font awesome）

## コメント
* 投稿（ajax）
* 削除（ajax）

## ユーザー関連
* フォロー機能
* グラフ表示（gem, chartkick）
* メール認証機能
* 管理者機能

## seo対策
* メタtag（gem, meta_tags）
* ぱんクズリスト（gem, gretel）
* サイトマップ（gem, sitemap_generator）
* サイトマップの自動更新（gem, whenever）

## デプロイ
* aws（ec2, s3, route53）
* mysql（maria DB）
* Unicorn
* Nginx
* 自動デプロイ（gem, Capistrano）
* ssl証明（AWS, ACM）

## その他
* ページネーション
* 日本語対応（gem, rails-i18n）
* 広告のランダム表示
* 問い合わせ（ライン公式, font awesome）
* ハンバーガーメニュー
* PV数(閲覧数)取得（gem, impressionist）
* OGPの設定（gem, meta-tags）
* レスポンシブ対応

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
| admin              | boolean    | default: false           |

### Association

* has_many :records
* has_many :rules
* has_many :relationships
* has_many :like_records
* has_many :like_rules
* has_many :followings, through: :relationships, source: :follow
* has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
* has_many :followers, through: :reverse_of_relationships, source: :user

## record テーブル 

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| date             | date       | null: false                    |
| ashi_id          | integer    | null: false                    |
| kind_id          | integer    | null: false                    |
| pair_id          | integer    | null: false                    |
| indi_main_id     | integer    | null: false                    |
| indi_sub_id      | integer    | null: false                    |
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
* has_many :comment_records

## rule テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| issue_id         | integer    | null: false                    |
| ashi_id          | integer    | null: false                    |
| kind_id          | integer    | null: false                    |
| pair_id          | integer    | null: false                    |
| indi_main_id     | integer    | null: false                    |
| indi_sub_id      | integer    | null: false                    |
| overview         | string     | null: false                    |
| overview_content | text       | null: false                    |
| entry            | text       | null: false                    |
| exit             | text       | null: false                    |
| summary          | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### association

* belongs_to :user
* has_many :comment_rules

## comment_record テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| record | references | null: false, foreign_key: true |

### Association

* belongs_to :record

## comment_rule テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| record | references | null: false, foreign_key: true |

### Association

* belongs_to :rule

## like_record テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| record_id | references | null: false, foreign_key: true |
| user_id   | references | null: false, foreign_key: true |

### Association

* belongs_to :record
* belongs_to :user

## like_rule テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| rule_id   | references | null: false, foreign_key: true |
| user_id   | references | null: false, foreign_key: true |

### Association

* belongs_to :rule
* belongs_to :user

## follow テーブル

| Column    | Type       | Options                           |
| --------- | ---------- | --------------------------------- |
| follow_id | references | foreign_key: { to_table: :users } |
| user_id   | references | null: false, foreign_key: true    |

### Association

* belongs_to :record
* belongs_to :method

## advertisement テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| img_url    | string  | null: false |
| af_link    | string  | null: false |
| ad_rate_id | integer | null: false |


## er図
[![Image from Gyazo](https://i.gyazo.com/6f7de4e4972139228d802fff24b6cefc.png)](https://gyazo.com/6f7de4e4972139228d802fff24b6cefc)