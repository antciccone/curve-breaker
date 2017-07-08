class AddHourlyRateToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rate, :string
    remove_column :teachers, :rate
  end
end
