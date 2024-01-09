class Room < ApplicationRecord

    validates :name, :room_info, :address, :price, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 1 }

    has_many :reservations, dependent: :destroy
    belongs_to :user

    mount_uploader :image, ImageUploader

end
