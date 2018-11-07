Product.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Transaction.destroy_all if Rails.env.development?

puts 'Cleaning database...'
Product.destroy_all
Transaction.destroy_all
User.destroy_all
# i = 0

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
 puts 'Creating products...'

10.times do
  Product.create(
    image: "https://picsum.photos/200/200?&< xpto = ${x} >",
    name: Faker::Beer.hop,
    category: Faker::Beer.malts,
    origin:   Faker::Address.country,
    quantity: Faker::Number.between(1, 50),
    price: Faker::Commerce.price(range = 1..100.0, as_string = false),
    description:  Faker::RickAndMorty.quote,
    user_id: rand(1..5)
  )
end
puts  'Finished'

# puts 'creating seed'
#   User.create(
#     name: 'breno',
#     address: 'roraima',
#     email: 'amigo@gmail.com',
#     password: 'Faker::Internet.password',
#     balance: 50 ,
#     avatar: Faker::Avatar.image("my-own-slug", "50x50")
#   )

#   Product.create(
#     image: "https://picsum.photos/200/200?&< xpto = ${x} >",
#     name: 'levedo bom pra caramba',
#     category: 'levedura',
#     origin:   'thailandia',
#     quantity: 10,
#     price: 100,
#     description:  'huasdjiaskodoksdfhdskofdsok dsfksdfsdfk ds',
#     user_id: User.find_by_name('breno').id
#   )

#   p "seeds created"
