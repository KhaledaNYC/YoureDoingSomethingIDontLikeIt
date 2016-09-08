class Post < ApplicationRecord
  belongs_to :poster, :class_name => 'User'
  has_many :dislikes
  has_many :dislikers, through: :dislikes
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
