class Message < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :content, presence: true
  validates :content, length: {minimum:10}
end
