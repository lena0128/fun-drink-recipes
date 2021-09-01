class Ingredient < ApplicationRecord
    has_many :measurements
    has_many :drinks, through: :measurements

    validates :name, presence: true, uniqueness: true
end
