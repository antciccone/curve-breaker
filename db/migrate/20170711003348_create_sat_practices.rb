class CreateSatPractices < ActiveRecord::Migration[5.0]
  def change
    create_table :sat_practices do |t|
      t.string :date
      t.string :math
      t.string :english
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
