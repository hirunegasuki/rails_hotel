class RoomsController < ApplicationController
    def index
        @rooms = Room.all
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new(room_params)
        if @room.save
            flash[:notice] = "施設を登録しました。"
            redirect_to rooms_path
        else
            flash.now[:alert] = "施設を登録できません。もう一度試してください。"
            render :new
        end
    end

    def show
       # @rooms = Room.first
        @room = Room.find(params[:id])
        @reservation = Reservation.new
       # render "rooms/own"
    end
  
    def edit
        @room = Room.find(params[:id])
    end

    private

    def room_params
        params.require(:room).permit(
            :name,
            :room_info,
            :price,
            :address,
            :image
        )
    end

    #def own   
    #    @room = Room.find(params[:id])     
    #end
end
