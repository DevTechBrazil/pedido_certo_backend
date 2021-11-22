FactoryBot.define do
  factory :order do
    registration_date { "2021-11-19" }
    delivery_date { "2021-11-19" }
    amount { 1.5 }
    last_payment_date { "2021-11-19" }
  end
end
