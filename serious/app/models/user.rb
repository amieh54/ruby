class User < ApplicationRecord
    has_many :signups
    has_many :events
    has_many :events_joined, through: :signups, source: :event
    has_secure_password

    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    validates :first_name, :last_name, :city, :state, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    validates :password, presence: true, :on => :create
    validates :password_confirmation, presence: true, :on => :create
    before_save :email_lowercase

    def email_lowercase
      email.downcase!
    end
end
