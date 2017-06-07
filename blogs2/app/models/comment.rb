class Comment < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_many :comments, as: :imageable
end
