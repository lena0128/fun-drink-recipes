class WelcomeController < ApplicationController
    def home
        @alc_drinks = Drink.latest_alcohoic_drinks
        @non_alc_drinks = Drink.latest_non_alcohoic_drinks
    end
end