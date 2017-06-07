class User < ActiveRecord::Base
  has_many :friends, class_name: "User", foreign_key: "friend_id"

  belongs_to :friend, class_name: "User"
end
