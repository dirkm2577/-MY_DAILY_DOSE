class NotificationsController < ApplicationController
  def index
    user = current_user
    @notifications = user.notifications
  end

  def create
    comment = params[:notification][:params]
    if CommentNotification.with(comment: comment).deliver(current_user)
      redirect_to notifications_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
