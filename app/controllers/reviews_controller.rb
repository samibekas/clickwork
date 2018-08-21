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

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end


end
