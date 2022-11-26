class UserSupplementsController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @user_supplements = UserSupplement.all
    # raise
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
    @supplement.destroy
    redirect_to supplements_path, status: :see_other
  end

  private

  def supplement_params
    params.require(:supplement).permit(:user_id, :supplement_id)
  end

  def set_article
    @user_supplement = UserSupplement.find(params[:id])
  end
end