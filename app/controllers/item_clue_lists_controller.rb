class ItemClueListsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        @newItem = ItemClueList.create(icl_params)
        # byebug
        render json: @newItem.item
    end

    def show
        @findEntry = ItemClueList.find(params[:id])
        render :json => @findEntry
    end

    def index
        @itemcluelists = ItemClueList.all
        render json: @itemcluelists
    end
   
    private
    def icl_params
        params.permit(:id, :item_id, :clue_list_id)
    end
end
