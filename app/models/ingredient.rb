class Ingredient < ApplicationRecord
    has_many :measurements
    has_many :drinks, through: :measurements
    has_many :reviews
    has_many :users, through: :reviews

    before_validation :make_title_case, :set_defalut_image
    validates :name, presence: true, uniqueness: true
    validates_presence_of :alcohol
    validate :is_title_case

    scope :ingredient_search, ->(name) { where("name LIKE ?", "%#{name.titlecase}%") }
    scope :filter_by_alcohol, ->(filter) { where("alcohol = ?", filter) }

    def self.order_by_name
        self.order(:name)
    end  

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
