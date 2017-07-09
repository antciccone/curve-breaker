class TeacherStudent < ApplicationRecord
  belongs_to :user
  belongs_to :teacher

  def find_id
    User.find(user_id).id
  end

  def find_name
    User.find(user_id).name
  end

  def find_email
    User.find(user_id).email
  end

  def find_grade
    User.find(user_id).grade
  end
end
