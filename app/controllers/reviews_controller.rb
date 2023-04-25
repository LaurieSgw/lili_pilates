class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    if @review.save
      redirect_to reviews_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update

  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
