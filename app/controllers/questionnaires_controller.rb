class QuestionnairesController < ApplicationController
  def show
    @question = Question.next_for
  end

  private

  def next_for
    @questions = []
    [] << Question.all
    if @question.response.user_id == current_user.id
      render 
    end
  end
end
