class Customer < ApplicationRecord
  validates :name, :telephone, :email, presence: true
  validates :name, length: {minimum:4}
  validates :telephone, length: {minimum:10}
  validates :email, length: {minimum:10}, uniqueness: true


end
