class ReviewsController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy]

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.supplement_id = params[:supplement_id]
    if @review.save!
      redirect_to supplements_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @supplement = Supplement.find(params[:supplement_id])
  end

  def update
    if @review.update(review_params)
      redirect_to supplements_path
    end
  end

  def destroy
    @review.destroy
    redirect_to reviews_path, status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_article
    @review = Review.find(params[:id])
  end
end
