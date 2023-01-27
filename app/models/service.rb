class Service < ApplicationRecord
  has_one_attached :image
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  #  validations
  validates :title, presence: true, length: { maximum: 40 }
  validates :duration, presence: true, length: { maximum: 40 }
  validates :class_time, presence: true, length: { maximum: 40 }
  validates :fee, presence: true, length: { maximum: 40 }
  validates :image, presence: true
  validates :description, presence: true
end
