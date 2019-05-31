class AddSourceIdToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :source_id, :integer
  end
end
