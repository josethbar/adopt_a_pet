class PetsController < ApplicationController
before_action :load_pets , only: [:index, :show_pets]

    def index

render json: {owner: @owner, pets: @pets}
    end

    def show_pets

render json: {owner: @owner, pets:@owner.pets}
    end

    private

    def load_pets
    @pets = Pet.find_by(owner_id: params[:owner_id])
    @owner = Owner.find(params[:owner_id])
    end
end