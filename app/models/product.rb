class Product < ApplicationRecord
  validates_presence_of(:description)
  validates_presence_of(:product_type)
  validates_presence_of(:cost)
  validates_presence_of(:sale_value)
end
