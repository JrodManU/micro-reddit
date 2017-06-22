class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_secure_password
  validates :username, presence: true, length: { minimum: 6, maximum: 20 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 8, maximum: 50 }
end
