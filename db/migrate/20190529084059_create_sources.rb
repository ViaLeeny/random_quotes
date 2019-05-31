class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :title
      t.string :type
      t.string :link
      t.integer :author_id

      t.timestamps
    end
  end
end
