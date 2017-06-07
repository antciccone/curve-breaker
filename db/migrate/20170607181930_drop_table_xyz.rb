class DropTableXyz < ActiveRecord::Migration[5.0]
  def change
        drop_table :tutoring do |t|
          t.string :teacher
          t.text    "notes"
          t.references :user, foreign_key: true

          t.timestamps
        end
      end
end
