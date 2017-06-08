class AddMathtoScore < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :sat_math, :string
    add_column :scores, :sat_english, :string
    add_column :scores, :psat_math, :string
    add_column :scores, :psat_english, :string

  end
end
