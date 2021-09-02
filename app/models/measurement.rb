class Measurement < ApplicationRecord
    belongs_to :drink
    belongs_to :ingredient

    validates_presence_of :measure

    def ingredient_attributes=(ingredient_attributes)
        ingredient_attributes.values.each do |hash|
        ingredient = Ingredient.find_or_create_by(hash)
        self.ingredients << ingredient
        end
    end
end
