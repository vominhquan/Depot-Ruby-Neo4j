# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brand.create(name: 'Samsung', image_url: 'samsung.jpeg')

ss=Brand.find_by(name: 'Samsung')

Product.create(title: 'Galaxy S6',description: 'Black Sapphire 32 GB', image_url: 'carousel-samsung-galaxy-s-6-black-sapphire-380x380-1.jpg',
               price: 579, brand: ss)
Product.create(title: 'Galaxy Note 5',description: 'Gold Platinum 32 GB', image_url: 'carousel-samsung-galaxy-note5-gold-platinum-380x380-1.jpg',
               price: 699, brand: ss)
Product.create(title: 'Galaxy Note 4',description: 'Charcoal Black', image_url: 'Samsung-Galaxy-Note-4-Charcoal-Black-Spin.0001.png',
               price: 549, brand: ss)
Product.create(title: 'Galaxy S6 edge+',description: 'Black Sapphire 32 GB', image_url: 'samsung-galaxy-s6-edge-plus-black-sapphire-spin.0001.png',
               price: 779, brand: ss)


Brand.create(name: 'Apple', image_url: 'apple.png')
ap=Brand.find_by(name: 'Apple')

Product.create(title: 'iPhone 6s',description: 'Space Gray 16 GB', image_url: 'carousel-apple-iphone-6s-space-gray-380x380-1.jpg',
               price: 649, brand: ap)
Product.create(title: 'iPhone 6s Plus',description: 'Rose Gold 16 GB', image_url: 'carousel-apple-iphone-6s-plus-rose-gold-380x380-1.jpg',
               price: 749, brand: ap)
Product.create(title: 'iPhone 5s',description: 'Silver 16 GB', image_url: 'carousel-apple-iphone-5s-silver-380x380-1.jpg',
               price: 649, brand: ap)
Product.create(title: 'iPhone 6 Plus',description: 'Space Gray 128 GB', image_url: 'carousel-apple-iphone-6-plus-space-gray-380x380-1.jpg',
               price: 849, brand: ap)