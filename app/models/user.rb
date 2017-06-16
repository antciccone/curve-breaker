class User < ApplicationRecord
  has_secure_password
  validates_confirmation_of :password

  has_many :scores
  has_many :lessons
  has_many :roles
  has_many :relationships

end
