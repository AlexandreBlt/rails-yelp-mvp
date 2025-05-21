# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french")
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese")
Restaurant.create!(name: "Madonname", address: "Cours balguerie, Bordeaux", category: "italian")
Restaurant.create!(name: "Toto le la", address: "Cours balguerie, Bordeaux", category: "japanese")
Restaurant.create!(name: "Tripletta", address: "Place de la comédie, Bordeaux", category: "chinese")

puts "Finished! Created #{Restaurant.count} restaurants."
