class Service < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations, dependent: :destroy

  #  validations
  validates :title, presence: true, length: { maximum: 40 }
  validates :duration, presence: true, length: { maximum: 40 }
  validates :class_time, presence: true, length: { maximum: 40 }
  validates :fee, presence: true, length: { maximum: 40 }
  validates :image_url, presence: true
end
