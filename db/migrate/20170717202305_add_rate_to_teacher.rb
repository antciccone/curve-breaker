class AddRateToTeacher < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :rate, :string
  end
end
