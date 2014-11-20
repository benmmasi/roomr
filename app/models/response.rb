class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  validates :positive, :inclusion => { :in => [true, false] }
end
