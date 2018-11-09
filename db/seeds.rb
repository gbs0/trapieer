Product.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Transaction.destroy_all if Rails.env.development?

puts 'creating users'

  User.create(
    name: 'admar',
    address: 'são paulo',
    email: 'admar@gmail.com',
    password: '123456',
    balance: 50 ,
    avatar: Faker::Avatar.image("my-own-slug", "50x50")
  )
    User.create(
    name: 'breno',
    address: 'carapicuiba',
    email: 'breno@gmail.com',
    password: '123456',
    balance: 60 ,
    avatar: Faker::Avatar.image("my-own-slug", "50x50")
  )
      User.create(
    name: 'cleiton',
    address: 'paraiba',
    email: 'cleiton@gmail.com',
    password: '123456',
    balance: 50 ,
    avatar: Faker::Avatar.image("my-own-slug", "50x50")
  )
puts 'creating products'

  malte = Product.create(
    name: 'malte de qualidade',
    category: 'malte',
    origin:   'thailandia',
    quantity: 10,
    price: 10,
    description:  'Mussum Ipsum, cacilds vidis litro abertis. Leite de capivaris, leite de mula manquis sem cabeça. Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Per aumento de cachacis, eu reclamis. Diuretics paradis num copo é motivis de denguis.',
    user_id: User.find_by_name('admar').id
  )
  malte.remote_image_url = 'https://res.cloudinary.com/aponce/image/upload/v1541701443/aidt5yn9dbzh3vdb0fve.jpg'
  malte.save

    levedo = Product.create(
    name: 'levedo de qualidade',
    category: 'levedura',
    origin:   'brasil',
    quantity: 11,
    price: 15,
    description:  'Mussum Ipsum, cacilds vidis litro abertis. Leite de capivaris, leite de mula manquis sem cabeça. Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Per aumento de cachacis, eu reclamis. Diuretics paradis num copo é motivis de denguis.',
    user_id: User.find_by_name('breno').id
  )
  levedo.remote_image_url = 'https://res.cloudinary.com/aponce/image/upload/v1541692487/ngfqmiujsrwlhlmvu66l.jpg'
  levedo.save

    lupulo = Product.create(
    name: 'lupulo de qualidade',
    category: 'lupulo',
    origin:   'japão',
    quantity: 12,
    price: 20,
    description:  'Mussum Ipsum, cacilds vidis litro abertis. Leite de capivaris, leite de mula manquis sem cabeça. Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Per aumento de cachacis, eu reclamis. Diuretics paradis num copo é motivis de denguis.',
    user_id: User.find_by_name('cleiton').id
  )
  lupulo.remote_image_url = 'https://res.cloudinary.com/aponce/image/upload/v1541709120/ngxsjud3iqvj9nfpkokp.jpg'
  lupulo.save

  puts "seeds created"
