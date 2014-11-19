class ResponsesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
  end

  def create
    @response = current_user.responses.new(response_params)

    if !@response.save
      flash[:error] = "Please choose an answer"
    end

    redirect_to questionnaire_path
  end

  private

  def response_params
    params.require(:response).permit(:question_id, :positive)
  end
end
