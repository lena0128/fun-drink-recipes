class Review < ApplicationRecord
    belongs_to :user
    belongs_to :ingredient

    validates_presence_of :rating
end
