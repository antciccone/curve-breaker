class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :act
      t.string :sat
      t.string :practice_sat
      t.string :practice_act
      t.belongs_to :user

      t.timestamps
    end
  end
end
