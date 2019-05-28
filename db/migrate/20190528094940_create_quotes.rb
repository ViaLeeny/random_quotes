class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :content
      t.integer :topic_id
      t.integer :book_id

      t.timestamps
    end
  end
end
