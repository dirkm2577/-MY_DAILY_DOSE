class NotificationsController < ApplicationController
  def index
    user = current_user
    @notifications = user.notifications
  end

  def create
    @notification = Notification.new(params[:params])
  end
end
