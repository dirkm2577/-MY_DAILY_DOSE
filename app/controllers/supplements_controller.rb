class SupplementsController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @supplements = Supplement.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @supplements = current_user.supplements
    end
  end

  def new
    @supplement = Supplement.new
  end

  def create
    @supplement = Supplement.new(supplement_params)
    @supplement.user = current_user
    if @supplement.save!
      comment = if @supplement.quantity == 1
        "Don't forget to take #{@supplement.name} once #{@supplement.frequency}"
      else
        "Don't forget to take #{@supplement.name} #{@supplement.quantity} times #{@supplement.frequency}"
      end
      CommentNotification.with(comment: comment).deliver(current_user)
      redirect_to supplements_path(@supplement)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.new
    @notification = Notification.new
  end

  def edit
  end

  def update
    if @supplement.update(supplement_params)
      redirect_to supplements_path(@supplement)
    end
  end

  def destroy
    @supplement.destroy
    redirect_to supplements_path(@supplement), status: :see_other
  end

  private

  def supplement_params
    params.require(:supplement).permit(:name, :price, :description, :quantity, :frequency, :remaining, :category, images: [])
  end

  def set_article
    @supplement = Supplement.find(params[:id])
  end
end
