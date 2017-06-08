class CreateTutorings < ActiveRecord::Migration[5.0]
  def change
    create_table :tutorings do |t|
      t.references :user, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
