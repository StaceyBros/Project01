class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  validates :license, :length => {maximum: 6}, :allow_blank => true, :uniqueness => true
  has_many :events
end
