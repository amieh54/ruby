class User < ApplicationRecord
    validates :username, presence: true
    has_many :messages
    has_many :comments
    validates :username, presence: true
    validates :username, length: {minimum:5}
    validates_uniqueness_of :username
end
