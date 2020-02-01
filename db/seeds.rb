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

# require 'rest-client'

# rm = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# rm_array = JSON.parse(rm)[“results”]

# rm_array.each do |character|
#  Character.create(
#  name: character[“name”],
#  status: character[“status”],
#  species: character[“species”],
#  gender: character[“gender”],
#  image: character[“image”]
#  )
# end
