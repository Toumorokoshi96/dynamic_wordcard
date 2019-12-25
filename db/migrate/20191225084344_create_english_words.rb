class CreateEnglishWords < ActiveRecord::Migration[6.0]
  def change
    create_table :english_words do |t|
      t.text :spell

      t.timestamps
    end
  end
end
