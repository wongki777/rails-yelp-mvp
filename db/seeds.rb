# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
# dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", rating: 5}
# pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", rating: 4}

bristol = {name: "Epicure", category: "french", address: "75008 Paris", phone_number: "01234 578990"}
milano = {name: "Rome", category: "italian", address: "75007 Italy", phone_number: "01234 578991"}
nagano = {name: "Tokyo", category: "japanese", address: "75006 Japan", phone_number: "01234 578992"}
xian = {name: "Beijing", category: "chinese", address: "75005 Chinese", phone_number: "01234 578993"}
bruges = {name: "Brussels", category: "belgian", address: "75004 Belgium", phone_number: "01234 578994"}


[bristol, milano, nagano, xian, bruges].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
