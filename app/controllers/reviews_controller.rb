class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @office = Office.find(params[:office_id])
    @review.office = @office
    @review.user = current_user
    authorize @review

    if @review.save
      respond_to do |format|
        format.html { redirect_to office_path(@office) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'offices/show' }
        format.js  # <-- idem
      end
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
