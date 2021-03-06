# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cocktail.destroy_all
Ingredient.destroy_all

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")


mojito = Cocktail.create(name: "Mojito")
Dose.create(description: "2 tranches", cocktail: mojito, ingredient: lemon)
Dose.create(description: "4 glacons", cocktail: mojito, ingredient: ice)
Dose.create(description: "3 feuilles", cocktail: mojito, ingredient: mint_leaves)
