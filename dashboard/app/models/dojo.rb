class Dojo < ActiveRecord::Base
    validates :brach, :street, :city, :state, presence: true
    validates :brach, :street, :city, :state, length: {minimum:2}
    validates :state, length: {maximum:2}
end
