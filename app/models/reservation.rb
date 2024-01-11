class Reservation < ApplicationRecord

    validates :check_in, presence:true
    validates :check_out, presence:true
    validates :number, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}
    validate :date_check

    def date_check
        return false if check_out.blank? || check_in.blank?
        
        errors.add(:check_out, "はチェックイン日より後の日付を指定ください") unless
        self.check_in < self.check_out
    end

    def total_day
        total_day = (check_out - check_in).to_i
    end

    def total_price
        total_price = (total_day * number * room.price)
    end

    belongs_to :room, optional: true    
    belongs_to :user

end
