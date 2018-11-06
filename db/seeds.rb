# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Creating cocktails...'
cocktails_attributes = [
  {
    name:         'Spicy Grand Margarita'
  },
  {
    name:         'Marguierita'
  },
  {
    name:         'Drinks'
  },
  {
    name:         'Gym Martinho'
  },
  {
    name:         'Dry Martinho'
  },
  {
    name:         'Sake'
  }
]
Cocktail.create!(cocktails_attributes)
puts 'Finished!'

puts 'Creating ingredients...'
20.times do 
	Ingredient.create(name: Faker::Food.fruits)
end
puts 'Finished!'
puts 'Creating doses...'
# i = 0
10.times do
	Dose.create(
		ingredient_id: Faker::Number.between(1, 10),
		cocktail_id: 	Faker::Number.between(1, 10),
		description: 	Faker::RickAndMorty.quote,
		nacionality: 	Faker::Address.country
	)
end 
puts  'Finished' 