class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :url, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w(lifestyle fashion food art),
    message: "%{value} is not a valid category" }
end
