class Ninja < ActiveRecord::Base

  validates :first_name, :last_name, presence: true
  belongs_to :dojo

  # def delete
  #     if Ninja.dojo presence: false
  #         Ninja.destroy
end
