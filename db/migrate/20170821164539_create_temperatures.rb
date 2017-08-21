class CreateTemperatures < ActiveRecord::Migration[5.0]
  def change
    create_table :temperatures do |t|
      t.string :temp
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
