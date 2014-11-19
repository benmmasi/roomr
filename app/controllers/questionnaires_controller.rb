class QuestionnairesController < ApplicationController
  def show
    @question = Question.next_for(current_user)
  end
end
