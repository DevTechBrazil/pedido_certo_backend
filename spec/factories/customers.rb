FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }
    telephone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
  end
end
