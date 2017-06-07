class Tutoring < ActiveRecord::Migration[5.0]
  def change
    create_table :tutoring do |t|
      t.string :teacher
      t.text :notes
      t.belongs_to :user
    end 
  end
end
