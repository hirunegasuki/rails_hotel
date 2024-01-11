class User < ApplicationRecord
  
  extend Devise::Models

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  mount_uploader :avatar, AvatarUploader

  has_many :reservations, dependent: :destroy
  has_many :rooms, dependent: :destroy

end
