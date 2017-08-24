class AddNameToAttachment < ActiveRecord::Migration[5.0]
  def change
    add_column :attachments, :name, :string
  end
end
