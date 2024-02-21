# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
category = ["chinese", "italian", "japanese", "french", "belgian"]
pizzeria_delamama = {name: "Pizzeria Delamama", address: "7 Boundary St, London E2 7JE", phone_number: "+33 04 78 93 04 01", category: category.sample }
kebabz = {name: "Kebabz", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+33 04 10 47 49 30", category: category.sample }
sushiboyz = {name: "Sushiboyz", address: "5th Avenue, New York 94732", phone_number: "+33 04 78 73 93 04", category: category.sample }
tacos_degeu = {name: "Tacos Degeu", address: "3 pont du fût, Ruoms 04003", phone_number: "+33 04 84 93 02 34", category: category.sample }
ardoise = {name: "Ardoise", address: "3 rue des lilas, Paris 75004", phone_number: "+33 04 89 20 34 12", category: category.sample }
bienmanger = {name: "Bien manger", address: "2 avenue des contes, Lyon 69001", phone_number: "+33 04 92 74 29 22", category: category.sample }

[pizzeria_delamama, kebabz, sushiboyz, tacos_degeu, ardoise, bienmanger].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
