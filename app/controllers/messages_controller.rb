class MessagesController < ApplicationController
  def create
    @other_user = User.find(params[:user_id])
    @message = current_user.messages.new(message_params)
    if @message.save
      redirect_to user_conversation_path(@other_user)
    else
      flash[:error] = "Please write something"
      redirect_to user_conversation_path(@other_user)
    end
  end

  private

  def message_params
    params.require(:message).permit(:receiver_id, :body).
      merge(sender_id: current_user.id)
  end
end
