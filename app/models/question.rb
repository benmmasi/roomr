class Question < ActiveRecord::Base
  has_many :responses

  def self.next_for(user)
    all_unanswered = all.pluck(:id) - user.responses.pluck(:question_id)
    first_unanswered = all_unanswered.first
    first_unanswered && find(first_unanswered)
  end
end
