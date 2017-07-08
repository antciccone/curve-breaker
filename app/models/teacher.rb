class Teacher < ApplicationRecord
  has_many :subjects
  has_many :teacher_students
  has_many :users, through: :teacher_students

  def find_rate
    User.find_by_email(self.email).rate
  end

  def all_subjects
    subjects.pluck(:name).join(" | ")
  end
end
