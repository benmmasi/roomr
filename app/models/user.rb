class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  belongs_to :region
  has_many :responses
  has_many :messages, foreign_key: :receiver_id

  def self.communicated_with(user)
    messages = Message.to_or_from(user)
    receivers = messages.map(&:receiver_id)
    senders = messages.map(&:sender_id)
    to_and_from = (receivers + senders).uniq
    to_and_from.delete user.id
    where id: to_and_from
  end
end
