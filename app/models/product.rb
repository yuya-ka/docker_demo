class Product < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :city, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
end