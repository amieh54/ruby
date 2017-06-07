class Event < ApplicationRecord

  has_many :signups, dependent: :destroy
  has_many :users_joined, through: :signups, source: :user, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :name, :city, :state, presence: true
  validates :date,
  date:{after: Proc.new { Date.today }, message: 'must be after today' }

end
