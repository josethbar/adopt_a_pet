class OwnersController < ApplicationController
    
    def index
        @owners = Owner.all
        render :index
    end

    def show
        @owner = Owner.includes(:pets).find(params[:id])
        render :show
    end
end
