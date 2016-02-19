# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(title: 'The Surprised Cat',description: 'This cat is surprised', image_url: 'sc.jpg', price: '40')
Product.create(title: 'The Surprised Dog',description: 'This dog is surprised', image_url: 'sd.jpg', price: '30')
Product.create(title: 'The Laughing Cheetahs',description: 'These cheetahs are surprised', image_url: 'cheetah.jpg', price: '50')