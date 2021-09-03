class ReviewsController < ApplicationController
    before_action :require_login

    def new
        @review = Review.new
    end

    def create
        @review = Review.create(review_params)
        @review.user_id = current_user.id 
        if @review.save
            flash[:message] = "Your review has been successfully created!"
            redirect_to review_path(@review)
        else
            render :new
        end
    end

    def show
        @review = Review.find_by(id: params[:id])
    end

    private
      def review_params
        params.require(:review).permit(
            :rating,
            :content,
            :user_id
        )
      end

end
