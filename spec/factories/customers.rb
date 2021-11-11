FactoryBot.define do
  factory :customer do
<<<<<<< HEAD
    
=======
    name { Faker::Name.name }
    phone_number { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
>>>>>>> 3e5e798d36af851dcf90272cddbc589ba31f9b28
  end
end
