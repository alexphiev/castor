class TableCategory < ActiveRecord::Migration[5.0]
  def change
    create_table :categories
    add_column :categories, :title, :string
  end
end
