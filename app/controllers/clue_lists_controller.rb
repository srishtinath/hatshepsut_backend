class ClueListsController < ApplicationController
    skip_before_action :verify_authenticity_token


    def index
        @cluelists = ClueList.all
        render json: @cluelists, include: [:items]
    end

    def show
        @cluelist = ClueList.find(params[:id])
        render json: @cluelist, include: [:items]
    end
    
    def deleteItem
        @foundEntry = ClueList.find(params[:id])
        @itemfound = @foundEntry.items.find(params[:item_id])
        @foundEntry.items.delete(Item.find(params[:item_id]))
        render json: @foundEntry.items.length
    end
end
