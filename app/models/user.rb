class User < ApplicationRecord
  has_secure_password
  validates_confirmation_of :password

  has_many :scores
  has_many :lessons 
end
