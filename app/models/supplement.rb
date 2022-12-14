class Supplement < ApplicationRecord
  belongs_to :user

  has_many :reviews
  has_many_attached :images

  validates :user, presence: true
  validates :name, presence: { message: "must be given please" }
  validates :quantity, presence: { message: "must be given please" }
  validates :frequency, presence: { message: "must be given please" }
  validates :images, presence: true
end
