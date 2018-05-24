class ReviewsController < ApplicationController
  def new
    @hideout = Hideout.find(params[:hideout_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.hideout = Hideout.find(params[:hideout_id])
    authorize @review
    if @review.save
      redirect_to hideout_path(@review.hideout_id), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end

