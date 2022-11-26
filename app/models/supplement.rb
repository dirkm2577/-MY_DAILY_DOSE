class Supplement < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many_attached :images

  validates :user, presence: true
end
