100.times do
  Customer.create(name: Faker::Name.name, telephone: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email)
end