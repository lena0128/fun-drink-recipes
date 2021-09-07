class MeasurementsController < ApplicationController
    
    def index
        @measurements = Measurement.all
    end

    def new
        # by checking if there is an drink_id in the params hash, we can know which drink we are associated with
        # if params[:drink_id]
            @drink = Drink.find_by(id: params[:drink_id])
            # by calling #build method, the new drink object will authomatically have an associated drink_id
            @ingredients = Ingredient.all
            @measurement = @drink.measurements.build
            @drinks = Drink.all
        #else
        #    @drinks = Drink.all
        #    @ingredients = Ingredient.all
        #    @measurement = Measurement.new
        # end
    end


    def create
        @measurement = Measurement.new(measurement_params)
        if params[:drink_id]
            @measurement.drink_id = params[:drink_id]
        end
            if @measurement.save
            flash[:message] = "New measurement successfully created!"
            redirect_to drink_path(@measurement.drink_id)
        else
            @drinks = Drink.all
            render :new
        end
    end

    private
    def measurement_params
        params.require(:measurement).permit(
            :measure,
            :drink_id,
            :ingredient_id
        )
    end

end
