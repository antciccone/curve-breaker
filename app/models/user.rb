class User < ApplicationRecord
  has_secure_password
  validates_confirmation_of :password

  has_many :scores
  has_many :lessons
  has_many :roles
  has_many :relationships


  def super_admin?
    roles.exists?(name: "super-admin")
  end

  def teacher?
    roles.exists?(name: "teacher")
  end
end
