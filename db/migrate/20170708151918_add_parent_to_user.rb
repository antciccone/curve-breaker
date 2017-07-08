class AddParentToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :parent_name, :string
    add_column :users, :parent_number, :string
  end
end
