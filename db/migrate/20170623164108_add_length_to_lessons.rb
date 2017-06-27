class AddLengthToLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :length, :string

  end
end
