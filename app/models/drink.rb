class Drink < ApplicationRecord
    has_many :measurements
    has_many :ingredients, through: :measurements

    validates :drink_name, presence: true, uniqueness: true

    def measurements_attributes=(measurements_attributes)
        measurements_attributes.values.each do |hash|
            if hash[:id]
                measurement = Measurement.find_by(id: hash[:id])
                measurement.update(hash)
            else
                measurement = Measurement.find_or_create_by(hash)
                self.measurements << measurement
            end
        end
    end

end
