# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Initializing seeding sequence...'
categories = %w(chinese italian japanese french belgian)
5.times do
  values = { name: Faker::Restaurant.name, address: Faker::Address.full_address, category: categories.sample, phone_number: Faker::PhoneNumber.cell_phone_with_country_code  }
  my_rest = Restaurant.new(values)
  my_rest.save!
end

puts 'Seeding successful!'
