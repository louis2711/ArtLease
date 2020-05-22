class ReviewsController < ApplicationController
  def create
    @artpiece = Artpiece.find(params[:artpiece_id])
    @review = Review.new(review_params)
    @review.artpiece = @artpiece
    @review.save
    redirect_to artpiece_path(@artpiece)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
