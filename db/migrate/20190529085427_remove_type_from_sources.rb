class RemoveTypeFromSources < ActiveRecord::Migration[5.2]
  def change
    remove_column :sources, :type, :string
  end
end
