class IngredientsController < ApplicationController
    before_action :set_ingredient, only: [:show]
    before_action :require_login

    def index
        # name seach function
        if params[:name]
            @ingredients = Ingredient.ingredient_search(params[:name]).order_by_name
        else
            @ingredients = Ingredient.all.order_by_name
        end
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
