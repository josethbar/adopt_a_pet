class AnimalsController < ApplicationController

    def index
        @animals = Animal.all
        # render json: @animals

        render :index
    end

    def new 
        @animals = Animal.new
        
        
        def create
            @animals = Animal.new(animal_params)

            if @animals.save
                redirect_to @animals

            else
                render :new, status: :unprocessable_entity
                end
            end
    end

    def show
        @animal  = Animal.find(params[:id])
        # render json: @animals 
    end

    def animal_params
        params.require(:animal).permit(:age, :color, :weight, :species )
    end
end
