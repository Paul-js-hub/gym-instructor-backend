class User < ApplicationRecord
  has_secure_password
  validates :full_name, presence: true
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true
end
