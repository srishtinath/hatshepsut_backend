class ClueListsController < ApplicationController
    def index
        @cluelists = ClueList.all
        render json: @cluelists, include: [:items]
    end

    def show
        @cluelist = ClueList.find(params[:id])
        render json: @cluelist, include: [:items]
    end
    
    
end
