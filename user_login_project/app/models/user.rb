class User < ActiveRecord::Base

    validates :first_name, :last_name, :email, :age, presence: true
    validates :first_name, :last_name, length: {minimum:2}
    validates :age, numericality: {greater_than: 10, less_than: 150}


    def full_name
        "#{self.first_name} #{self.last_name}"
end

# creating a custom class method. self refers to the User model
    def self.average_age
        self.sum(:age) / self.count
    end
end
