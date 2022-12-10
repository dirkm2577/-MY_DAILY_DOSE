class NotificationsController < ApplicationController
  def index
    user = current_user
    @notifications = user.notifications
  end

  def create
    @notification = Notification.new(params[:params])
    raise
    @review.user = current_user
    @review.supplement_id = params[:supplement_id]
    if @review.save!
      redirect_to supplements_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
