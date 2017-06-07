class Student < ApplicationRecord
  belongs_to :dojo
  validates :fname, :lname, :email, presence: true
  validates :fname, :lname, :email, length: {minimum:2}
 
end
