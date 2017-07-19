class CreateActScores < ActiveRecord::Migration[5.0]
  def change
    create_table :act_scores do |t|
      t.string :date
      t.string :math
      t.string :english
      t.string :reading
      t.string :science
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
