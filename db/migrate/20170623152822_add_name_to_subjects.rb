class AddNameToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :name, :string
  end
end
