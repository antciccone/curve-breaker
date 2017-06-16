class Teacher < ApplicationRecord
  has_many :teacher_students
  has_many :users, through: :teacher_students
end
