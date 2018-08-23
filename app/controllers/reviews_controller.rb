class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @office = Office.find(params[:office_id])
    @review.office = @office
    @review.user = current_user
    authorize @review

    if @review.save
      redirect_to office_path(@office)
    else
      render 'offices/new'
    end
  end

  def average_rating
    sum_ratings = 0
    @reviews = Review.where(office: params[:office_id])
    @reviews.each do |review|
      sum_ratings += review.rating
    end
    @average = (sum_ratings) / (@reviews.count)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
