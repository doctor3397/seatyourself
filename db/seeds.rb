# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "beginning seed file"

Restaurant.create!(
  name: "Kal and Mooy",
  city: "Richmond Hill",
  capcity: "18",
  cuisine: "African",
  image: "1.png"
  )

  Restaurant.create!(
    name: "Me-N-U",
    city: "Queen West",
    capcity: "24",
    cuisine: "Asian Fusion",
    image: "asian_foodtruck2.png"
  )

      Restaurant.create!(
        name: "Blue Donkey",
        city: "The Beaches",
        capcity: "30",
        cuisine: "Greek",
        image: "blue_donkey_foodtruck1.png"
      )

      Restaurant.create!(
        name: "Feisty Jack",
        city: "Etobicoke",
        capcity: "33",
        cuisine: "English",
        image: "churros_foodtruck6.png"
      )

      Restaurant.create!(
        name: "Randy's Curbside",
        city: "North York",
        capcity: "14",
        cuisine: "BBQ and Grill",
        image: "cupcakes_foodtruck2.png"
      )

  puts "#{Restaurant.count} restaurants created"
