class SupplementsController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @supplements = Supplement.all
  end

  def new
    @supplement = Supplement.new
  end

  def create
    @supplement = Supplement.new(supplement_params)
    @supplement.user = current_user
    if @supplement.save!
      redirect_to supplements_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.new
  end

  def edit
  end

  def update
    if @supplement.update(supplement_params)
      redirect_to supplements_path
    end
  end

  def destroy
    raise
    @supplement.destroy
    redirect_to supplements_path, status: :see_other
  end

  private

  def supplement_params
    params.require(:supplement).permit(:name, :price, :description, :quantity, :frequency, :unit_measure, :category, photos: [])
  end

  def set_article
    @supplement = Supplement.find(params[:id])
  end
end
