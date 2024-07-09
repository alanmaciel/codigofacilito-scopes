class Product < ApplicationRecord
  scope :in_stock, -> { where("stock > ?", 0) }
  scope :discounted, -> { where("discount > ?", 0) }
  scope :price_between, ->(min, max) { where(price: min..max) }
end
