class RoomsController < ApplicationController

    before_action :set_user

    def index
        @rooms = Room.all
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new(room_params)

        if @room.save
            redirect_to "/rooms/#{@room.id}"
        else
            render "new"
        end
    end

    def show
        @room = Room.find(params[:id])
        @reservation = Reservation.new
        session[:previous_url] = request.referer
    end

    def search
        @rooms = Room.where("address like ?", "%#{params[:area]}%")
        
        if params[:keyword].present?
          @rooms = Room.where(['room_info LIKE(?) OR name LIKE(?)', "%#{params[:keyword]}%","%#{params[:keyword]}%"])
        end 
    end

    def own
        @rooms = Room.all
        @room = Room.where(user_id: current_user.id)
    end

    def set_user
        @user = current_user
    end

    private
    def room_params
        params.require(:room).permit(
            :name, 
            :room_info, 
            :price, 
            :address, 
            :image,
            :user_id
        )
    end

end
