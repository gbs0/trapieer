Product.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Transaction.destroy_all if Rails.env.development?
puts 'creating seed'
  User.create(
    name: 'breno',
    address: 'roraima',
    email: 'amigo@gmail.com',
    password: 'Faker::Internet.password',
    balance: 50 ,
    avatar: Faker::Avatar.image("my-own-slug", "50x50")
  )

  Product.create(
    image: "https://as1.ftcdn.net/jpg/01/21/56/92/500_F_121569280_8OaTUKSA18R5UAm0K8Iy2QXmjJfxOhYN.jpg",
    name: 'levedo bom pra caramba',
    category: 'levedura',
    origin:   'thailandia',
    quantity: 10,
    price: 100,
    description:  'huasdjiaskodoksdfhdskofdsok dsfksdfsdfk ds',
    user_id: User.find_by_name('breno').id
  )

  p "seeds created"
