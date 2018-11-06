# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Product.destroy_all
Transaction.destroy_all
User.destroy_all
# i = 0

puts 'Creating products...'

20.times do
	Product.create(
		image: Faker::Avatar.image("hops", "300x300"),
		name: Faker::Beer.hop,
		category: Faker::Beer.malts,
		origin: 	Faker::Address.country,
		quantity: Faker::Number.between(1, 50),
		price: Faker::Commerce.price(range = 1..100.0, as_string = false),
		description: 	Faker::RickAndMorty.quote,
		user_id: Faker::Number.between(1, 5)
	)
end 
puts  'Finished' 

puts 'Creating users...'

5.times do
	User.create(
		name: Faker::Name.name,
		address: Faker::Address.full_address,
		email: Faker::Internet.email,
		password: Faker::Internet.password,
		balance: Faker::Commerce.price(range = 1..2000.0, as_string = false),
		avatar: Faker::Avatar.image("my-own-slug", "50x50")
	)
end 
puts  'Finished' 
