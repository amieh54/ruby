class User < ApplicationRecord
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :city, presence: true
  validates :state, presence: true
  has_secure_password
  validates :password, length:{minimum: 8}
  validates :password_confirmation, presence: true 
  before_save :email_lowercase

  def email_lowercase
    email.downcase!
  end
end
