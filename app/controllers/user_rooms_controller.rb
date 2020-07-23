class UserRoomsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @userRooms = UserRoom.all
        render json: @userRooms
    end
    def create
        @userRoom = UserRoom.create(userRoomParams)
        render json: @userRoom
    end

    private

    def userRoomParams
        params.permit(:user_id, :room_id)
    end
end
