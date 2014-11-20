class ResponsesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @response = @question.response.new
  end

  def create
    @response = current_user.responses.new(response_params)
    if @response.save
      redirect_to questionnaire_path
    else
      flash[:error] = "Please choose an answer"
      redirect_to questionnaire_path
    end
  end

  private

  def response_params
    params.require(:response).permit(:question_id, :positive)
  end
end
