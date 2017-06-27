class TeacherStudent < ApplicationRecord
  belongs_to :user
  belongs_to :teacher

  def find_id
    User.find(id).id
  end

  def find_name
    User.find(id).name
  end

  def find_email
    User.find(id).email
  end

  def find_grade
    User.find(id).grade
  end

end
