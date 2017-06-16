class CreateTogethers < ActiveRecord::Migration[5.0]
  def change
    create_table :togethers do |t|
      t.integer :teacher_id
      t.integer :student

      t.timestamps
    end
  end
end
