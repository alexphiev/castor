class TableBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books
    add_column :books, :title, :string
    add_column :books, :author, :string
  end
end
