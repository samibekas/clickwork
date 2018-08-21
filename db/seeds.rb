# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
puts 'Creating 10 fake users...'

20.times do
  user = User.new(
    first_name: Faker::FunnyName.name,
    last_name: Faker::FunnyName.two_word_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    description: Faker::Lorem.paragraph(2),
    email: Faker::Internet.email,
    password: '123456',
    photo: "http://res.cloudinary.com/dls4bo2ix/image/upload/v1534850848/hjsvaalwzcbx89yriyyu.jpg"
  )
  user.save!
end

puts 'Creating 10 fake offices...'
20.times do
  office = Office.new(
    name:    Faker::Company.name,
    description: Faker::Lorem.paragraph(2),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    capacity_max: 10,
    photo: "http://res.cloudinary.com/dls4bo2ix/image/upload/v1534850848/hjsvaalwzcbx89yriyyu.jpg",
    user_id: 1
  )
  office.save!
end

