class OwnersController < ApplicationController
    
    def index
        @owner = Owner.all
        render json: @owner
    end

    def show
        @owner = Owner.find(params[:id])
        render json: @owner
    end

end
