class ReservationsController < ApplicationController
    def index
        @reservations = Reservation.all
        @rooms = Room.all
    end

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
            flash[:notice] = "スケジュールを登録しました。"
            redirect_to reservations_path
        else
            flash.now[:alert] = "スケジュールを登録できません。もう一度試してください。"
            render :new
        end
    end

    def confirm
        @reservation = Reservation.new(@attr)
    end
end
