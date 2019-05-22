require 'faker'

5.times do
  name = Faker::Restaurant.name
  address = "#{Faker::Address.street_address}, #{Faker::Address.city}"
  phone_number = Faker::PhoneNumber.phone_number
  category = %w[chinese italian japanese french belgian].sample
  restaurant = Restaurant.new(name: name, address: address, phone_number: phone_number, category: category)
  restaurant.save!
end
