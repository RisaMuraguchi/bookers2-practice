class CreateBookHashtagRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :book_hashtag_relations do |t|
      t.references :book, index: true, foreign_key: true
      t.references :hashtag, index: true, foreign_key: true
      t.timestamps
    end
  end
end
