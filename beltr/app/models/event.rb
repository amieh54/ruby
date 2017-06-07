class Event < ApplicationRecord
    belongs_to :user
    validates :name, :city, :state, presence: true
    validates :date,
    date:{after: Proc.new { Date.today }, message: 'must be after today' }

end
