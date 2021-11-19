class Product < ApplicationRecord
  validates :description, :product_type, :cost, :sale_value, presence: true
  validates :description, length:{minimum:4}
  validates :cost, :sale_value, length:{minimum:2}
end
