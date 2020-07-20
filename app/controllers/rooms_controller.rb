class RoomsController < ApplicationController

    def index
        @rooms = Room.all
        render json: @rooms, include: [:locations]
    end
    
    def show
        @room = Room.find(params[:id])
        render json: @room, include: [:locations]
    end
    

end
