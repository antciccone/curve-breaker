class AddHomeworktoLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :homework, :text
  end
end
