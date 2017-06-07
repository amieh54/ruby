class Friendship < ActiveRecord::Base
    belongs_to :user, :foreign_key => "user_id", :class_name => "User"
    belongs_to :friend, :foreign_key => "friend_id", :class_name => "User"
end

Under relationship table:

belongs_to :self_join_table, :foreign_key => "self_join_table_id", :class_name => "Self_join_table"
belongs_to :relationship, :foreign_key => "relationship_id", :class_name => "Self_join_table"
