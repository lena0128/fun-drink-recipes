class DrinksController < ApplicationController
    before_action :set_drink, only: [:show, :edit, :update]

    def index
        @drinks = Drink.all
    end

    def new
        @drink = Drink.new
    end

    def create
        @drink = Drink.new(drink_params)
        if @drink.save
            redirect_to drink_path(@drink)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    private
    def drink_params
        params.require(:drink).permit(
            :drink_name
        )
    end

    def set_drink
        @drink = Drink.find_by(id: params[:id])
    end
end
