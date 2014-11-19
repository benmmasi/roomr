class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  validates :positive, presence: true
end
