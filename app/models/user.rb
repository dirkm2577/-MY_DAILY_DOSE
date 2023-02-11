class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  geocoded_by :address
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :supplements, dependent: :destroy
  has_many :reviews
  has_many :notifications, as: :recipient, dependent: :destroy

  after_validation :geocode, if: :will_save_change_to_address?
end
