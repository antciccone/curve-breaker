class CreateTeacherStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_students do |t|
      t.references :user, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
