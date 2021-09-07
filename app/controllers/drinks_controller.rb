class DrinksController < ApplicationController
    before_action :set_drink, only: [:show, :edit, :update, :destroy]
    before_action :require_login
    before_action :require_creator, only: [:edit, :update, :destroy]

    def index
        if params[:name]
            @drinks = Drink.drink_search(params[:name])
        elsif params[:filter]
            @drinks = Drink.filter_by_category(params[:filter])
        else
            @drinks = Drink.all
        end
    end

    def new
        @drink = Drink.new
        @drink.measurements.build
        @drink.measurements.build
        @drink.measurements.build
    end

    def create
        @drink = Drink.new(drink_params)
        @drink.user = current_user
        if @drink.save
            flash[:message] = "A new drink has been successfully created!"
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
        flash[:message] = "The drink has been successfully updated!"
        redirect_to drink_path(@drink)
      else
        render :edit
      end
    end

    def destroy
        @drink.delete
        flash[:message] = "The drink has been deleted!"
        redirect_to drinks_path
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

    def require_creator
        if current_user.id != @drink.user_id
            flash[:message] = "You are not allowed to do this!"
            redirect_to drinks_path
        end
    end

end
