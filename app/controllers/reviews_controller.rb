class ReviewsController < ApplicationController
    before_action :require_login

    def index
        if params[:ingredient_id]
            @ingredient = Ingredient.find_by(id: params[:ingredient_id])
            @reviews = @ingredient.reviews
        else
        @reviews = Review.all
        end
    end

    def new
        if params[:ingredient_id]
            @ingredient = Ingredient.find_by(id: params[:ingredient_id])
            @review = @ingredient.reviews.build(user: current_user)
            @ingredients = Ingredient.all
        else
            @review = Review.new
        end
    end

    def create
        @review = Review.new(review_params)
        @review.user_id = current_user.id
        if params[:ingredient_id]
            @review.ingredient_id = params[:ingredient_id]
            @ingredient = Ingredient.find_by(id: params[:ingredient_id])
        end
        if @review.save
            flash[:message] = "Your review has been successfully created!"
            redirect_to ingredient_review_path(@ingredient, @review)
        else
            render :new
        end
    end

    def show
        @review = Review.find_by(id: params[:id])
        @ingredient = @review.ingredient
    end

    private
      def review_params
        params.require(:review).permit(
            :rating,
            :content,
            :ingredient_id,
            :user_id
        )
      end

end
