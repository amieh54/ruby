class User < ActiveRecord::Base
    has_many :friendships, :foreign_key => "user_id", :class_name => "Friendship"
    has_many :friends, :through => :friendships
end



Under table where you self join:

has_many :relationship_table_name(s), :foreign_key => "current_table", :class_name =>"Relationship_table_name"
has_many :relationship(s), :through => :relationship_table_name(s)

Under relationship table:

belongs_to :self_join_table, :foreign_key => "self_join_table_id", :class_name => "Self_join_table"
belongs_to :relationship, :foreign_key => "relationship_id", :class_name => "Self_join_table"
