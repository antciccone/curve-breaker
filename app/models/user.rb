class User < ApplicationRecord
  has_secure_password
  validates_confirmation_of :password

  has_many :scores
  has_many :lessons
  has_many :user_roles
  has_many :roles, through: :user_roles

  def super_admin?
    roles.exists?(name: "super-admin")
  end
  # create a role called teacher
end
