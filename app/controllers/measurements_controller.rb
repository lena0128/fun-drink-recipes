class MeasurementsController < ApplicationController
    
    def index
        @measurements = Measurement.all
    end

    def new
        @measurement = Measurement.new
    end

    def show
        @measurement = Measurement.find_by(id: params[:id])
    end

    def create
        @measurement = Measurement.new(measurement_params)
        if @measurement.save
            flash[:message] = "New measurement successfully created!"
            redirect_to measurement_path(@measurement)
        else
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
