class CreateJapaneseWords < ActiveRecord::Migration[6.0]
  def change
    create_table :japanese_words do |t|
      t.text :spell

      t.timestamps
    end
  end
end
