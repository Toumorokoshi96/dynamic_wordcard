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

test
# README

# アプリケーション概要



# アプリケーションの機能一覧

英単語登録機能
画像登録機能
日本語単語登録機能
関係登録機能

ユーザー新規登録機能
Basic認証機能
ユーザーログイン／ログアウト機能
マイページ（登録リソースリスト表示）機能

# アプリケーション内で使用している技術一覧

|種別|名称|
|----|---|
|開発言語|Ruby(ver 2.5.1)|
|フレームワーク|Ruby on Rails(ver 6.0.2)|
|マークアップ|HTML(Haml),CSS(Sass)|
|フロントエンド|JavaScript(jQuery)|
|DB|MySQL|
|本番環境|AWS EC2|
|画像アップロード|carrierwave, AWS S3|



entity "resource_definition" << (A,orchid) >>{
    + id [PK]
    ==
    *name: text
    *type: text
    ==
    created_at: datetime
    updated_at: datetime
}
entity "relation_definition"  << (A,orchid) >>{
    + id [PK]
    ==
    *name: text
      represent_word: boolean
    ==
    created_at: datetime
    updated_at: datetime
}
entity "english_word" << (E,red) >>{
    + id [PK]
    ==
    *spell: text
    ==
    created_at: datetime
    updated_at: datetime
}
entity "japanese_word"  << (E,red) >>{
    + id [PK]
    ==
    *spell: text
    ==
    created_at: datetime
    updated_at: datetime
}
entity "image"  << (E,red) >>{
    + id [PK]
    ==
    *image: text
    ==
    created_at: datetime
    updated_at: datetime
}
entity "opus"  << (E,red) >>{
    + id [PK]
    ==
    *title: text
    *contest: long_text
    ==
    created_at: datetime
    updated_at: datetime
}
entity "english_image" << (R,gray) >>{
    + id [PK]
    ==
    # english_word_id [FK(english_word, id)]
    # image_id [FK(image, id)]
    weight: int
    ==
    created_at: datetime
    updated_at: datetime
}
entity "opus_english" << (R,gray) >>{
    + id [PK]
    ==
    # opus_id [FK(image, id)]
    # english_word_id [FK(english_word, id)]
    ==
    created_at: datetime
    updated_at: datetime
}
entity "image_japanese"  << (R,gray) >>{
    + id [PK]
    ==
    # image_id [FK(image, id)]
    # japanese_word_id [FK(japanese_word, id)]
    weight: int
    ==
    created_at: datetime
    updated_at: datetime
}
entity "english_japanese" << (R,gray) >>{
    + id [PK]
    ==
    # english_word_id [FK(english_word, id)]
    # japanese_word_id [FK(japanese_word, id)]
    weight: int
    ==
    created_at: datetime
    updated_at: datetime
}