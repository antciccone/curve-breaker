class User < ApplicationRecord
  has_secure_password
  validates_confirmation_of :password

  has_many :scores
  has_many :lessons
  has_many :roles
  has_many :teacher_students
  has_many :teachers, through: :teacher_students

  attr_reader :role

  def super_admin?
    roles.exists?(name: "super-admin")
  end

  def teacher?
    roles.exists?(name: "teacher")
  end

  def find_teacher
    Teacher.find_by_email(self.email)
  end

  def pair_status(teacher)
    teacher_students.find_by(teacher_id: teacher.id).status
  end

  def find_teacher_lessons(teacher)
    lessons.where(teacher_id: Teacher.find_by_email(teacher.email).id)
  end
end
