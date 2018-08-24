# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Facility.create(name: "wifi")
Facility.create(name: "coffee")
Facility.create(name: "projector")
Facility.create(name: "printer")
Facility.create(name: "air conditioner")
Facility.create(name: "computer")
Facility.create(name: "scanner")
Facility.create(name: "fridge")
# require 'faker'
# puts 'Creating 20 fake users...'

# seeds_avatar = ["https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/Quotidien-Il-est-desormais-interdit-de-toucher-Emmanuel-Macron-.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/poutine117.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/donald-trump-feature-0819181.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/dark-vador-250.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/220px-Angela_Merkel_Juli_2010_-_3zu4__cropped_2.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/Quotidien-Il-est-desormais-interdit-de-toucher-Emmanuel-Macron-.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/poutine117.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/donald-trump-feature-0819181.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/dark-vador-250.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/220px-Angela_Merkel_Juli_2010_-_3zu4__cropped_2.jpg","https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/Quotidien-Il-est-desormais-interdit-de-toucher-Emmanuel-Macron-.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/poutine117.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/donald-trump-feature-0819181.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/dark-vador-250.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/220px-Angela_Merkel_Juli_2010_-_3zu4__cropped_2.jpg","https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/Quotidien-Il-est-desormais-interdit-de-toucher-Emmanuel-Macron-.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/poutine117.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853053/donald-trump-feature-0819181.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/dark-vador-250.jpg",
# "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/220px-Angela_Merkel_Juli_2010_-_3zu4__cropped_2.jpg"]

# i = 0

# 20.times do
#   user = User.new(
#     first_name: Faker::FunnyName.name,
#     last_name: Faker::FunnyName.two_word_name,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     description: Faker::Lorem.paragraph(2),
#     email: Faker::Internet.email,
#     password: '123456'
#   )
#   user.save
#   url = "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853052/220px-Angela_Merkel_Juli_2010_-_3zu4__cropped_2.jpg"
#   user.remote_photo_url = url
#   user.save!
#   # i += 1
#   end




# seeds_offices_images = ["https://i.officeriders.com/thrC8xbogEmvHqTQ9-800-*-jpg.jpg",
#     "https://i.officeriders.com/low/s6Xm3qebhWXHshNdh-600-*-jpg.jpg",
#     "https://i.officeriders.com/low/WeopeDiZ7nTk3PZJ3-600-*-jpg.jpg",
#     "https://i.officeriders.com/low/kwRij9N7Jnejagj7j-600-*-jpg.jpg",
#     "https://i.officeriders.com/low/eLwNaYb8PGqtiaoBC-600-*-jpg.jpg",
#     "https://i.officeriders.com/low/9GD4MaSDJRbttpjku-600-*-jpg.jpg",
#     "https://i.officeriders.com/low/TfePM5sRhpPfFarQ5-600-*-jpg.jpg",
#     "https://i.officeriders.com/low/AJZ4oEhTTFkzcf6yh-600-*-jpg.jpg",
#     "https://i.officeriders.com/low/7FXgfshp6gYjwiiZP-600-*-jpg.jpg",
#     "https://i.officeriders.com/low/n57yWeZS9q4Mu8NNM-600-*-jpg.jpg"
# ]

# i = 1

# category_array = ["Event", "Meeting", "Coworking", "Event", "Meeting", "Coworking", "Event", "Meeting", "Coworking", "Meeting" ]

# puts 'Creating 10 fake offices...'
# 10.times do
#   office = Office.new(
#     name:    Faker::Company.name,
#     description: Faker::Lorem.paragraph(2),
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     capacity_max: 10,
#     photo: seeds_offices_images[i],
#     user_id: 1
#     category: category_array[i]
#     facility_ids: [1, 2]
#   )
#   office.capacity_max.times do
#     Desk.new(
#       office_id: i,
#       price: 10
#       )
#   end
#   office.save
#   url = seeds_offices_images[i]
#   office.remote_photo_url = url
#   office.save!
#   i += 1
# end

