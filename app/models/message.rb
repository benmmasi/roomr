class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  validates :body, presence: true

  def self.between(user1, user2)
    where("(sender_id = :user1 AND receiver_id = :user2) OR
          (sender_id = :user2 AND receiver_id = :user1)",
          user1: user1.id, user2: user2.id).order(:created_at)
  end

  def self.to_or_from(user)
    where("sender_id = :id OR receiver_id = :id", id: user.id)
  end
end
