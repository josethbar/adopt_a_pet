class AnimalsController < ApplicationController

    def index
        @animals = Animal.all
        render json: @animals
    end

    def show
        @animals  = Animal.find(params[:id])
        render json: @animals 
    end

end
