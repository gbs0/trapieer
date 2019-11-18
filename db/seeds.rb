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
    name: 'Château Pilsen',
    category: 'malte',
    origin:   'Belgica 🇧🇪',
    quantity: 10,
    price: 12.5,
    image: 'https://valbier.com.br/image/cache/catalog/produtos/Malte_chateau_Pilsen_162-750x750.jpg',
    description:  'O malte de cor mais clara, bem modificado e que pode ser facilmente mosturado em uma infusão de temperatura única ou em decocção.
                  Nosso malte Château Pilsen traz um sabor forte e adocicado além de conter poder
                  enzimático suficiente para ser usado como malte base',
    user_id: User.find_by_name('admar').id
  )
  # malte.remote_image_url = ""; Add images on Model column
  malte.save

  malte0 = Product.create(
    name: 'Château Peated (Defumado)',
    category: 'malte',
    origin:   'Belgica 🇧🇪',
    quantity: 10,
    price: 14.69,
    image: 'http://www.brejarte.com.br/loja/image/cache/catalog/malte-chateau-special-b-castle-malting-100g-ccc-220x220.jpg',
    description:  'Produz um aroma e sabor inconfundíveis de malte defumado e
                  condimentado, típicos dos estilos clássicos de cerveja alemã. A cerveja fabricada
                  com malte Château Peated tem sabor de madeira queimada – mas de forma
                  positiva! Possui colarinho denso e na boca a sensação é similar a de uma cerveja tipo
                  ale com gás',
    user_id: User.find_by_name('admar').id
  )
  # malte0.remote_image_url = "";
  malte0.save

  malte1 = Product.create(
    name: 'Château Vienna',
    category: 'malte',
    origin:   'Italia 🇮🇹',
    quantity: 10,
    price: 15,
    image: 'http://www.brejarte.com.br/loja/image/cache/catalog/malte-chateau-special-b-castle-malting-100g-ccc-220x220.jpg',
    description:  'Produz um aroma e sabor inconfundíveis de malte defumado e
                  condimentado, típicos dos estilos clássicos de cerveja alemã. A cerveja fabricada
                  com malte Château Peated tem sabor de madeira queimada – mas de forma
                  positiva! Possui colarinho denso e na boca a sensação é similar a de uma cerveja tipo
                  ale com gás',
    user_id: User.find_by_name('admar').id
  )
  # malte0.remote_image_url = "";
  malte0.save
  # levedo = Product.create(
  #   name: 'levedo de qualidade',
  #   category: 'levedura',
  #   origin:   'brasil',
  #   quantity: 11,
  #   price: 15,
  #   description:  'Mussum Ipsum, cacilds vidis litro abertis. Leite de capivaris, leite de mula manquis sem cabeça. Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Per aumento de cachacis, eu reclamis. Diuretics paradis num copo é motivis de denguis.',
  #   user_id: User.find_by_name('breno').id
  # )
  # levedo.remote_image_url = 'https://res.cloudinary.com/aponce/image/upload/v1541692487/ngfqmiujsrwlhlmvu66l.jpg'
  # levedo.save

  #   lupulo = Product.create(
  #   name: 'lupulo de qualidade',
  #   category: 'lupulo',
  #   origin:   'Japão 🇯🇵',
  #   quantity: 12,
  #   price: 20,
  #   description:  'Mussum Ipsum, cacilds vidis litro abertis. Leite de capivaris, leite de mula manquis sem cabeça. Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Per aumento de cachacis, eu reclamis. Diuretics paradis num copo é motivis de denguis.',
  #   user_id: User.find_by_name('cleiton').id
  # )
  # lupulo.remote_image_url = 'https://res.cloudinary.com/aponce/image/upload/v1541709120/ngxsjud3iqvj9nfpkokp.jpg'
  # lupulo.save

  puts "seeds created"
