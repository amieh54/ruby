class User < ActiveRecord::Base
    has_many :owners
    has_many :posts
    has_many :messages
    has_many :blogs, through: :owners
    has_many :blogs_posted, through: :posts, source: :blog
    has_many :comments, as: :imageable
    validates :first_name, :last_name, :email, presence:true
end
