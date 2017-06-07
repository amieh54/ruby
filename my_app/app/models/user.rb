class User < ActiveRecord::Base
    has_many :messages
    # def messages
    #
    #     User.find_by_sql("SELECT * FROM messages WHERE messages.user_id=#{self.id}")
    # end
    has_many :signups
    has_many :courses, through: :signups
end
