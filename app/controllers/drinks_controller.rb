class DrinksController < ApplicationController
    before_action :set_drink, only: [:show, :edit, :update]

    def index
        @drinks = Drink.all
    end

    def new
        @drink = Drink.new
        @drink.measurements.build
        @drink.measurements.build
        @drink.measurements.build
    end

    def create
        @drink = Drink.new(drink_params)
        if @drink.save
            flash[:message] = "New drink successfully created!"
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
      if @drink.update(drink_params)
        flash[:message] = "Drink successfully updated!"
        redirect_to drink_path(@drink)
      else
        render :edit
      end
    end

    private
    def drink_params
        params.require(:drink).permit(
            :drink_name,
            :category,
            :alcoholic,
            :drink_thumb,
            :drink_recipe,
            measurements_attributes: [:measure, :ingredient_id, :id]
        )
    end

    def set_drink
        @drink = Drink.find_by(id: params[:id])
    end
end
