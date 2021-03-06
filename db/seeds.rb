# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Margarita")
Cocktail.create(name: "Piña Colada")
Cocktail.create(name: "Old Fashioned")

# margarita = Cocktail.new(name: "Margarita")
# margarita.save!

# dose1 = Dose.new(description: "5ml")
# dose1.cocktail = margarita

Dose.create(description: "5ml", cocktail_id: 1, ingredient_id: 1)
Dose.create(description: "500gr", cocktail_id: 2, ingredient_id: 2)

# require 'rest-client'

# rm = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/search.php?s"
# rm_array = JSON.parse(rm)[“results”]

# rm_array.each do |cocktail|
#  Cocktail.create(
#  name: cocktail[“strDrink”],
#  status: cocktail[“status”],
#  species: cocktail[“species”],
#  gender: cocktail[“gender”],
#  image: cocktail[“image”]
#  )
# end
