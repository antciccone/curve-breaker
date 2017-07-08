class AddHourlyRateToTeacher < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :rate, :string
    remove_column :teachers, :title
  end
end
