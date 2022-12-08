class Review < ApplicationRecord
  belongs_to :user
  belongs_to :supplement

  def blank_stars
    5 - rating.to_i
  end
end
