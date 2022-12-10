class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :supplements, dependent: :destroy
  has_many :reviews
  has_many :notifications, as: :recipient, dependent: :destroy
end
