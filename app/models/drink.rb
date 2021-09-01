class Drink < ApplicationRecord
    has_many :measurements
    has_many :ingredients, through: :measurements

    validates :drink_name, presence: true, uniqueness: true
end
