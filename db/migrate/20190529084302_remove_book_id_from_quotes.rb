class RemoveBookIdFromQuotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotes, :book_id, :integer
  end
end
