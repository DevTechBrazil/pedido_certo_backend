class Order < ApplicationRecord
  validates :registration, :delivery, :amount, :last_payment, presence: true
  validates :registration, :delivery, :last_payment, length:{minimum:4}
  validates :amount, length:{minimum:2}
end
