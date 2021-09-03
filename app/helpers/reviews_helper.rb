module ReviewsHelper
    
    def form_url_helper(ingredient)
      ingredient ? ingredient_reviews_path : reviews_path
    end
end
