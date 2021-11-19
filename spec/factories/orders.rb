FactoryBot.define do
  factory :order do
    registration { "2021-11-19" }
    delivery { "2021-11-19" }
    amount { 1.5 }
    last_payment { "2021-11-19" }
  end
end
