class QuestionnairesController < ApplicationController
  def show
    @question = Question.next_for(current_user)
    @questions = Question.all
  end
end
