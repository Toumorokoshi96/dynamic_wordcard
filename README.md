# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
![tables](https://user-images.githubusercontent.com/55179175/70849625-76932700-1ec4-11ea-9d8d-0d16edf3a1ac.png)
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


# README


# Summary


# Functions
## Registration of..
### english words
### images
### japanese words
### relation between datas the above

## Registration of users
## Basic authentication
## Log in/out
## Mypage

# Tools

|Type|name|
|----|---|
|Programming language|Ruby(ver 2.5.1)|
|Web framework|Ruby on Rails(ver 6.0.2)|
|Frontend|HTML(Haml), CSS(Sass), JavaScript(jQuery)|
|DB|MySQL|
|Image uploader|carrierwave|
|Production environment|AWS EC2, AWS S3|



## resource_definitionテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|unique|
|type|text|unique|
|created_at|datetime||
|updated_at|datetime||

### Association
- has_many :english_words
- has_many :japanese_words
- has_many :opuses
- has_many :images


## relation_definitionテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|unique|
|represent_word|boolean||
|created_at|datetime||
|updated_at|datetime||

### Association
- has_many :english_japaneses
- has_many :english_images
- has_many :image_japaneses
- has_many :opus_englishes

## english_wordテーブル
|Column|Type|Options|
|------|----|-------|
|spell|text|unique|
|created_at|datetime||
|updated_at|datetime||

### Association
- belongs_to :resource_definition
- has_many :japanese_words, thorough: :japanese_englishes
- has_many :japanese_englishes
- has_many :opuses, thorough: :opus_englishes
- has_many :opus_englishes

## japanese_wordテーブル
|Column|Type|Options|
|------|----|-------|
|spell|text|unique|
|created_at|datetime||
|updated_at|datetime||

### Association
- belongs_to :resource_definition
- has_many :ensligh_words, thorough: :japanese_englishes
- has_many :japanese_englishes
- has_many :opuses, thorough: :opus_englishes
- has_many :opus_englishes

## imageテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|unique|
|created_at|datetime||
|updated_at|datetime||

### Association
- belongs_to :resource_definition
- has_many :ensligh_words, thorough: :ensligh_images
- has_many :ensligh_images
- has_many :japanese_words, thorough: :japanese_images
- has_many :japanese_images

## opusテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|unique|
|contest|long_text|unique|
|created_at|datetime||
|updated_at|datetime||

### Association
- belongs_to :resource_definition
- has_many :ensligh_words, thorough: :ensligh_opuses
- has_many :ensligh_opuses

## english_imageテーブル
|Column|Type|Options|
|------|----|-------|
|english_word_id|integer|FK(english_word, id)|
|image_id|integer|FK(image, id)|
|weight|integer||
|created_at|datetime||
|updated_at|datetime||

### Association
- belongs_to :relation_definition
- belongs_to :ensligh_word
- belongs_to :image

## opus_englishテーブル
|Column|Type|Options|
|------|----|-------|
|opus_id|integer|FK(image, id)|
|english_word_id|integer|FK(english_word, id)|
|created_at|datetime||
|updated_at|datetime||

### Association
- belongs_to :relation_definition
- belongs_to :opus
- belongs_to :ensligh_word

## image_japaneseテーブル
|Column|Type|Options|
|------|----|-------|
|image_id|integer|FK(image, id)|
|japanese_word_id|integer|FK(japanese_word, id)|
|weight|integer||
|created_at|datetime||
|updated_at|datetime||

### Association
- belongs_to :relation_definition
- belongs_to :image
- belongs_to :japanese_word

## english_japaneseテーブル
|Column|Type|Options|
|------|----|-------|
|english_word_id|integer|FK(english_word, id)|
|japanese_word_id|integer|FK(japanese_word, id)|
|weight|integer||
|created_at|datetime||
|updated_at|datetime||

### Association
- belongs_to :relation_definition
- belongs_to :english_word
- belongs_to :japanese_word