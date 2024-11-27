# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

# Seed Restaurants
restaurant1 = Restaurant.create!(
  name: "Les fins Gourmets",
  address: "10 Rue de Paris, 75000 Paris",
  phone_number: "01 23 45 67 89",
  category: "french"
)

restaurant2 = Restaurant.create!(
  name: "TokyOsaka",
  address: "20 Avenue des Champs, 75008 Paris",
  phone_number: "01 98 76 54 32",
  category: "japanese"
)

restaurant3 = Restaurant.create!(
  name: "China Street",
  address: "147 Rue des Bourgeois, 75000 Paris",
  phone_number: "01 21 78 83 54",
  category: "chinese"
)

restaurant4 = Restaurant.create!(
  name: "Pizza Napoli",
  address: "78 Avenue des Champs, 75008 Paris",
  phone_number: "01 98 56 37 54",
  category: "italian"
)

restaurant5 = Restaurant.create!(
  name: "Le Gourmet",
  address: "67 Rue des Frères, 75000 Paris",
  phone_number: "01 34 67 22 46",
  category: "belgian"
)
