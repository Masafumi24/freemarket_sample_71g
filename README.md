# README
Hello　World
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
sample_71g  DB設計
## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|explaination|string|null: false|
|condition|string|null: false|
|date|integer|null: false|
|responsibility|string|null: false|
|price|integer|null: false|
|prefecture_id|integer|null: false|
|brand|string|

|user_id|references|foreign_key: true|
|category_id|references|foreign_key: true|
|like_id|references|foreign_key: true|
|comment_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :category
- has_many :comments
- has_many :likes

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|profile|string|null: false|
|assessment|string|null: false|
|phone-number|interger|null: false|
|gender|string|null: false|
|payment-method|string|null: false|
|image|string|null: false|
|favorite|string|
### Association
- has_many :items
- has_many  :comments
- has_many  :likes
- has_many  :cards
- has_one :address

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|last_name|string|null: false|
|first_name|string|null: false|
|last_furigana|string|null: false|
|first_furigana|string|null: false|
|zip|integer|null: false|
|prefectures_id|interger|null: false|
|city|string|null: false|
|street|string|null: false|
|building-name|string|

|user_id|references|foreign_key: true|
### Association
- belongs_to :user

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|customer_id|references|foreign_key: true|
|card_id|references|foreign_key: true|
|user|references|foreign_key: true|
### Association
- belongs_to :user

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|
|user_id|references|foreign_key: true, null: false|
|item_id|references|foreign_key: true, null: false|
### Association
- belongs_to :user
- belongs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|null: false|
### Association
has_many :items
has_ancestry

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|item_id|references|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
### Association
- has_many :items

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :item

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
