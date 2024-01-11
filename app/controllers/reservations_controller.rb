class ReservationsController < ApplicationController
    before_action :set_user

    def index
        @reservations = Reservation.all
    end

    def create
		@reservation = Reservation.new(reservation_params)
        
        @reservation.save
		redirect_to reservations_path
	end

    def confirm
		@reservation = Reservation.new(reservation_params)

        if @reservation.invalid?
            @room = Room.find(params[:reservation][:room_id])
            render "rooms/show"
          end
	end

	private
	def reservation_params
		params.require(:reservation).permit(
            :room_id,
            :user_id,
            :number,
            :check_in,
            :check_out
        )
	end

    def set_user
        @user = current_user
    end

end
