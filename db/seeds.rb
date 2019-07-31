# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cat.destroy_all
CatDate.destroy_all

personality = ['timid','friendly','always hungry','cuddly', 'loner','loud']

age = (1..15).to_a

breed= ['norwegian', 'shorthair', 'munchkin', 'chonki boi']

treat = ['shrimp','chicken','seafood','beef']

User.create(name: 'duong', username: 'duong', password: 'duong')
User.create(name: 'rachel', username: 'rara', password: 'rara')

Cat.create(
  name:'Popo',
  cat_img: 'https://i.pinimg.com/originals/f9/b0/8b/f9b08b9ae3fbfe4ef5aaceee56d5a250.gif',
  personality: personality.sample,
  age: age.sample,
  breed: breed.sample,
  favorite_treat: treat.sample)

Cat.create(
  name:'Momo',
  cat_img: 'https://media.giphy.com/media/fWgx05OeLKsTjsJrw8/200.gif',
  personality: personality.sample,
  age: age.sample,
  breed: breed.sample,
  favorite_treat: treat.sample)

Cat.create(
  name:'Chloe',
  cat_img: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/15ccf6b4-8eb9-4af0-b273-958e88fd79d1/da7treq-bd8c4ae5-d109-4d7e-89b6-bfa9769052d1.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzE1Y2NmNmI0LThlYjktNGFmMC1iMjczLTk1OGU4OGZkNzlkMVwvZGE3dHJlcS1iZDhjNGFlNS1kMTA5LTRkN2UtODliNi1iZmE5NzY5MDUyZDEucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.zs3ei8_N5bzU9vUjXgTg27PAaQtPSPU_Pd8vGC1nXgw',
  personality: personality.sample,
  age:age.sample,
  breed: breed.sample,
  favorite_treat: treat.sample)

Cat.create(
  name:'Lil Mama',
  cat_img: 'http://www.freepngclipart.com/thumb/cat/39735-cartoon-cats-cute-halloween-black-cat-image-thumb.png',
  personality: personality.sample,
  age:age.sample,
  breed: breed.sample,
  favorite_treat: treat.sample)

Cat.create(
  name:'Boris',
  cat_img: 'https://i.pinimg.com/originals/95/4e/c3/954ec356c19c4a624ca38265e3532e63.png',
  personality: personality.sample,
  age: age.sample,
  breed: breed.sample,
  favorite_treat: treat.sample)

Cat.create(
  name:'Peppermint',
  cat_img: 'https://media3.giphy.com/media/fWrorpy7Jrlvi/200w_s.gif',
  personality: personality.sample,
  age:age.sample,
  breed: breed.sample,
  favorite_treat: treat.sample)

CatDate.create(user_id: User.all.sample.id , cat_id: Cat.all.sample.id, treat: treat.sample)

p "SEEDED! 🐈"
