class ConversationsController < ApplicationController
  def index
    @users = User.communicated_with(current_user)
  end

  def show
    @other_user = User.find(params[:user_id])
    @messages = Message.between(current_user, @other_user)
    @message = current_user.messages.new
  end
end
