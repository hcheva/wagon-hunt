class Product < ApplicationRecord

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_attachment :photo

  belongs_to :user
  has_many :upvotes

  validates :user, presence: true
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w(lifestyle fashion food art tech home),
    message: "%{value} is not a valid category" }

end



