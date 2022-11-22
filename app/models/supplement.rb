class Supplement < ApplicationRecord
  belongs_to :user
  has_many :user_supplements
  has_many_attached :photos
end
