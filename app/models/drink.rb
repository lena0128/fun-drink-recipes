class Drink < ApplicationRecord
    has_many :measurements
    has_many :ingredients, through: :measurements

    before_validation :make_title_case, :set_defalut_thumb
    validates :drink_name, presence: true, uniqueness: true
    validates_presence_of :category, :alcoholic, :drink_recipe

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

    def make_title_case
        self.drink_name = drink_name.titlecase
    end

    def is_title_case
        if self.drink_name != drink_name.titlecase
            self.errors.add(:drink_name, "must be titlecase!")
        end
    end

    def set_defalut_thumb
        if self.drink_thumb == nil || self.drink_thumb == ""
            self.drink_thumb = "https://www.thecocktaildb.com/images/media/drink/mrz9091589574515.jpg"
        end
    end

end
