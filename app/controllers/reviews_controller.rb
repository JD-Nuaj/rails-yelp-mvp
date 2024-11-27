class ReviewsController < ApplicationController
  before_action :set_restaurant

  #/restaurants/:restaurant_id/reviews/new
  def new
    @review = @restaurant.reviews.new
  end

  #/restaurants/:restaurant_id/reviews
  def create
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      redirect_to @restaurant
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
