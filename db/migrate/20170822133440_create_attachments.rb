class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.references :user, foreign_key: true
      t.attachment :avatar

      t.timestamps
    end
  end
end
