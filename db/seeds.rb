# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'rest-client'
# require 'faker'

# Brewery.destroy_all
# User.destroy_all

# brews = RestClient.get('https://api.openbrewerydb.org/breweries?by_city=washington')

# brews_array = JSON.parse(brews)


# brews_array.each do |brew|
#     Brewery.create(
#         name: brew['name'],
#         street: brew['street'],
#         city: brew['city'],
#         state: brew['state'],
#         postal_code: brew['postal_code'],
#         longitude: brew['longitude'].to_f,
#         latitude: brew['latitude'].to_f,
#         website_url: brew['website_url'],
#         rating: 5,
#         description: Faker::Lorem.paragraph(sentence_count: 5),
#         image: 'https://cdn.bannerbuzz.com/media/catalog/product/resize/560/b/e/beer-bottle-labels.jpg'
#     )
# end

# User.create(
#     username: 'SaraTarnvik',
#     firstname: 'Sara',
#     lastname: 'Tarnvik',
#     image: 'https://cdn.shopify.com/s/files/1/1599/6911/products/Baerlic-hop-pin_800x.jpg?v=1500396557',
#     bio: Faker::Lorem.paragraph(sentence_count: 3),
#     fav_beer: 'stout'
# )
#byebug


