module MeasurementsHelper

    def form_url_helper(drink)
        drink ? drink_measurements_path(drink) : measurements_path
    end
end
