class Dislike < ApplicationRecord
  belongs_to :dislikers, :class_name => 'User'
  belongs_to :post
  has_many :dislikers, through: :dislikes
end
