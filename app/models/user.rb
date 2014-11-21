class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  belongs_to :region
  has_many :responses
  has_many :messages, foreign_key: :receiver_id
end
