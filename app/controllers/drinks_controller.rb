class DrinksController < ApplicationController
    before_action :set_drink, only: [:show, :edit, :update]

    def index
        if params[:name]
            @drinks = Drink.drink_search(params[:name])
        elsif params[:filter]
            case params[:filter]
            when "Ordinary Drink"
                @drinks = Drink.filter_ordinary_drink
            when "Cocktail"
                @drinks = Drink.filter_cocktail 
            when "Milk / Float / Shake"
                @drinks = Drink.filter_milk_float_shake 
            when "Cocoa" 
                @drinks = Drink.filter_cocoa
            when "Shot"
                @drinks = Drink.filter_shot
            when "Coffee / Tea" 
                @drinks = Drink.filter_coffee_tea
            when "Homemade Liqueur" 
                @drinks = Drink.filter_homemade_liqueur
            when"Punch / Party Drink" 
                @drinks = Drink.filter_punch_party_drink
            when "Beer" 
                @drinks = Drink.filter_beer
            when "Soft Drink / Soda"
                @drinks = Drink.filter_soda
            when "View All"
                @drinks = Drink.all
        end    
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
