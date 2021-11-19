FactoryBot.define do
  factory :product do
    description { "MyString" }
    product_type { 1 }
    cost { 1.5 }
    sale_value { 1.5 }
  end
end
