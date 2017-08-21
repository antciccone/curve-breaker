class CreateContacteds < ActiveRecord::Migration[5.0]
  def change
    create_table :contacteds do |t|
      t.text :notes, :default => "Has not been contacted"
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
