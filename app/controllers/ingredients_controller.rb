class IngredientsController < ApplicationController
    before_action :set_ingredient, only: [:show]

    def index
        @ingredients = Ingredient.all
    end

    def new
        @ingredient = Ingredient.new
    end

    def show
    end

    def create
        @ingredient = Ingredient.new(ingredient_params)
        if @ingredient.save
            flash[:message] = "New ingredient successfully created!"
            redirect_to ingredient_path(@ingredient)
        else
            render :new
        end
    end

    private
    def ingredient_params
        params.require(:ingredient).permit(
            :name,
            :image,
            :alcohol,
            :description
        )
    end

    def set_ingredient
        @ingredient = Ingredient.find_by(id: params[:id])
    end
end
