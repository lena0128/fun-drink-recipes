class DrinksController < ApplicationController
    before_action :set_drink, only: [:show, :edit, :update, :destroy]
    before_action :require_login
    before_action :require_creator, only: [:edit, :update, :destroy]

    def index
        if params[:name]
            @drinks = Drink.drink_search(params[:name])
        elsif params[:filter]
            case params[:filter]
            when "Ordinary Drink"
                @drinks = Drink.filter_ordinary_drink.sort_by { |drink| drink.drink_name }
            when "Cocktail"
                @drinks = Drink.filter_cocktail.sort_by { |drink| drink.drink_name } 
            when "Milk / Float / Shake"
                @drinks = Drink.filter_milk_float_shake.sort_by { |drink| drink.drink_name } 
            when "Cocoa" 
                @drinks = Drink.filter_cocoa.sort_by { |drink| drink.drink_name }
            when "Shot"
                @drinks = Drink.filter_shot.sort_by { |drink| drink.drink_name }
            when "Coffee / Tea" 
                @drinks = Drink.filter_coffee_tea.sort_by { |drink| drink.drink_name }
            when "Homemade Liqueur" 
                @drinks = Drink.filter_homemade_liqueur.sort_by { |drink| drink.drink_name }
            when"Punch / Party Drink" 
                @drinks = Drink.filter_punch_party_drink.sort_by { |drink| drink.drink_name }
            when "Beer" 
                @drinks = Drink.filter_beer.sort_by { |drink| drink.drink_name }
            when "Soft Drink / Soda"
                @drinks = Drink.filter_soda.sort_by { |drink| drink.drink_name }
            when "View All"
                @drinks = Drink.all.sort_by { |drink| drink.drink_name }
        end    
        else
           @drinks = Drink.all.sort_by { |drink| drink.drink_name }
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
