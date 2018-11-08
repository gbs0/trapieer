# Product.destroy_all if Rails.env.development?
# User.destroy_all if Rails.env.development?
# Transaction.destroy_all if Rails.env.development?


# puts 'Creating users...'
#  5.times do
#   User.create(
#     name: Faker::Name.name,
#     address: Faker::Address.full_address,
#     email: Faker::Internet.email,
#     password: Faker::Internet.password,
#     balance: Faker::Commerce.price(range = 1..2000.0, as_string = false),
#     avatar: Faker::Avatar.image("my-own-slug", "50x50")
#   )
# end
#  puts 'Creating products...'


puts 'creating user'
  User.create(
    name: 'breno',
    address: 'roraima',
    email: 'breno@gmail.com',
    password: '123456',
    balance: 50 ,
    avatar: Faker::Avatar.image("my-own-slug", "50x50")
  )
puts 'creating product'
  Product.create(
    image: 'image/upload/v1541692487/ngfqmiujsrwlhlmvu66l.jpg',
    name: 'levedo de qualidade duvidosa',
    category: 'levedura',
    origin:   'thailandia',
    quantity: 10,
    price: 100,
    description:  'Mussum Ipsum, cacilds vidis litro abertis. Leite de capivaris, leite de mula manquis sem cabeça. Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Per aumento de cachacis, eu reclamis. Diuretics paradis num copo é motivis de denguis.',
    user_id: 1
  )
  puts "seeds created"
# http://res.cloudinary.com/aponce/image/upload/v1541692487/ngfqmiujsrwlhlmvu66l.jpg
