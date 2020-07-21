class ClueListsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @cluelists = ClueList.all
        render json: @cluelists, include: [:items]
    end

    def show
        @cluelist = ClueList.find(params[:id])
        if !@cluelist.items
            @cluelist.items.create(name: "Looks like there were some footprints near the murder scene...", location_id: Location.find_by(name: "home").id)
        end
        render json: @cluelist, include: [:items]
    end

    def addItem
        @foundEntry = ClueList.find(params[:id])
        newItem = @foundEntry.items.create(id: params[:item_id])
        byebug
        render json: @foundEntry.items
    end
    
    def deleteItem
        @foundEntry = ClueList.find(params[:id])
        @itemfound = @foundEntry.items.find(params[:item_id])
        @foundEntry.items.delete(Item.find(params[:item_id]))
        render json: @foundEntry.items.length
    end

    private

    def clueListParams
        params.permit(:id, :item_id)
    end
end
