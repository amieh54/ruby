class Student < ActiveRecord::Base
    has_many :signups
    has_many :course, through: :signups
end
