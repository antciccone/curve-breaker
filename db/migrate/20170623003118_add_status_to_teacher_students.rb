class AddStatusToTeacherStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :teacher_students, :status, :string
  end
end
