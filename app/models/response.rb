class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  validates_inclusion_of :positive, :in => [true, false]
end
