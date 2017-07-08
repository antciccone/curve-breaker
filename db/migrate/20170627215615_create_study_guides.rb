class CreateStudyGuides < ActiveRecord::Migration[5.0]
  def change
    create_table :study_guides do |t|
      t.references :user, foreign_key: true
      t.attachment :avatar
      t.timestamps
    end
  end
end
