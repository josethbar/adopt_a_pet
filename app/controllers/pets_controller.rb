class PetsController < ApplicationController


    def index
        @pet = Pet.where(owner_id: params[:owner_id])
        render json: @pet
    end

    def show
        @pet = Pet.find(params[:id])
        render json: @pet
    end
end