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
Facility.create(name: "AC")
Facility.create(name: "computer")
Facility.create(name: "scanner")
Facility.create(name: "fridge")
Facility.create(name: "lift")
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
#   url = seeds_avatar[i]
#   user.remote_photo_url = url
#   user.save!
#   i += 1
# end


# seeds_offices_images = ["https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853039/Bureau-coworking-avignon-french-tech-etable-cowork.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853039/20170801105912194.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853038/download_1.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853038/download.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534850848/hjsvaalwzcbx89yriyyu.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853039/Bureau-coworking-avignon-french-tech-etable-cowork.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853039/20170801105912194.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853038/download_1.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853038/download.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534850848/hjsvaalwzcbx89yriyyu.jpg","https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853039/Bureau-coworking-avignon-french-tech-etable-cowork.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853039/20170801105912194.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853038/download_1.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853038/download.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534850848/hjsvaalwzcbx89yriyyu.jpg","https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853039/Bureau-coworking-avignon-french-tech-etable-cowork.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853039/20170801105912194.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853038/download_1.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534853038/download.jpg",
#     "https://res.cloudinary.com/dls4bo2ix/image/upload/v1534850848/hjsvaalwzcbx89yriyyu.jpg"]

# i = 0

# puts 'Creating 20 fake offices...'
# 20.times do
#   office = Office.new(
#     name:    Faker::Company.name,
#     description: Faker::Lorem.paragraph(2),
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     capacity_max: 10,
#     photo: seeds_offices_images[i],
#     user_id: 1
#   )
#   office.save
#   url = seeds_offices_images[i]
#   office.remote_photo_url = url
#   office.save!
#   i += 1
# end

