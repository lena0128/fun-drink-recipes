class Measurement < ApplicationRecord
    belongs_to :drink
    belongs_to :ingredient

    validates_presence_of :measure

end
