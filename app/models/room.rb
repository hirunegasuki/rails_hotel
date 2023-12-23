class Room < ApplicationRecord
    # mount_uploader :image, ImgUploader
    has_many :reservations

    validates :name, presence: true
    validates :room_info, presence: true
    validates :address, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
