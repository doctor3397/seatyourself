# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "beginning seed file"

Restaurant.destroy_all

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
    image: "asian_foodtruck3.png"
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
        image: "fiesty_jack_foodtruck2.png"
      )

      Restaurant.create!(
        name: "Randy's Curbside",
        city: "North York",
        capcity: "14",
        cuisine: "BBQ and Grill",
        image: "grill_foodtruck5.png"
      )

      Restaurant.create!(
        name: "Cupcake Diner",
        city: "North York",
        capcity: "14",
        cuisine: "Cupcakes",
        image: "cupcakes_foodtruck4.png"
      )

  puts "#{Restaurant.count} restaurants created"
