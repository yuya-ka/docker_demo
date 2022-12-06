class Product < ApplicationRecord

  validates :title, presence: true
  validates :money, presence: true, numericality: { only_integer: true }
  validates :content, presence: true
end
