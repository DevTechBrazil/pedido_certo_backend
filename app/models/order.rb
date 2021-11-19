class Order < ApplicationRecord
  validates :registration_date, :delivery_date, :amount, :last_payment_date, presence: true
  validates :registration_date, :delivery_date, :last_payment_date, length:{minimum:4}
  validates :amount, length:{minimum:2}
end
