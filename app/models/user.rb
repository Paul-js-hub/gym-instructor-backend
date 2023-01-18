class User < ApplicationRecord
  has_secure_password
  validates :full_name, presence: true
  validates :email, presence: true
  validates :username, presence: true, uniqueness: true

  has_many :services, foreign_key: :user_id, dependent: :destroy
  has_many :reservations, foreign_key: :user_id, dependent: :destroy
end
