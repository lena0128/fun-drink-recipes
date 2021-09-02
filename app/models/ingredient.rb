class Ingredient < ApplicationRecord
    has_many :measurements
    has_many :drinks, through: :measurements

    before_validation :make_title_case, :set_defalut_image
    validates :name, presence: true, uniqueness: true
    #validates_presence_of :alcohol
    validate :is_title_case


    def set_defalut_image
        if self.image == nil || self.image == ""
            self.image = "https://www.thecocktaildb.com/images/ingredients/Kummel.png"
        end
    end

    def is_title_case
        if self.name != self.name.titlecase
            self.errors.add(:name, "must be titlecase!")
        end
    end

    def make_title_case
        self.name = name.titlecase
    end
    
end
