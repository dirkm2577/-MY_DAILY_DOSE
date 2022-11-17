class Supplement < ApplicationRecord
  belongs_to :user
  has_many :user_supplements
end
