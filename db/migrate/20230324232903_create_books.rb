class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.text :hashbody
      t.integer :user_id
      t.timestamps
    end
  end
end
