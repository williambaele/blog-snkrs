class Sneaker < ApplicationRecord
  validates :name, presence: true
  validates :sku, presence: true
  validates :drop_date, presence: true
  validates :description, presence: true
end
