# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Creating 5 movies...'
categories = %w[chinese japanese italian french belgian]
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: categories.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  restaurant.save!
  puts "Restaurant #{restaurant.id} created!"
end
puts 'Finished!'
