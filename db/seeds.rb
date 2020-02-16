# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
drinks = JSON.parse(user_serialized)

array = []
drinks['drinks'].each { |drink| array << drink['strIngredient1'] }
array.sort.each { |ingredient| Ingredient.create(name: ingredient) }

drink1 = Cocktail.create(name: 'Caipirinha', description: 'the so famous lemon brazilian one',)
drink2 = Cocktail.create(name: 'Mokito', description: 'Un mojito cubano avec un poquito d\'autre chose')
drink3 = Cocktail.create(name: 'Black Russian', description: 'delicious vodka beverage for night parties')

# Dose.create(description: '6 cl', cocktail_id: 3, ingredient_id: 2)

file = URI.open('https://res.cloudinary.com/droxurcle/image/upload/v1581854982/drbalagdapdgblfmiyuq.jpg')
drink1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/droxurcle/image/upload/v1581854994/qfg6agxnncr2japnoimc.jpg')
drink2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://res.cloudinary.com/droxurcle/image/upload/v1581854901/wyz1apsnwlu2ahnfnyii.jpg')
drink3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
