class User < ApplicationRecord
  has_many :posts, :foreign_key => 'poster_id'
  has_many :dislikes, through: :posts, :foreign_key => 'disliker_id'
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
