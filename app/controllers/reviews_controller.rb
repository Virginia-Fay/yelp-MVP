class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    review.restaurant = @restaurant
    @review.save

    redirect to restaurant_path(@restaurant)

    private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

end
