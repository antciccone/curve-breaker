class CreateActPractices < ActiveRecord::Migration[5.0]
  def change
    create_table :act_practices do |t|
      t.string :date
      t.string :math
      t.string :english
      t.string :science
      t.string :reading
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
