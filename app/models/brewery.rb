class Brewery < ApplicationRecord
	has_many :user_brews
	has_many :users, through: :user_brews


	def self.get_breweries_data(parameter, state)

		brews = RestClient.get("https://api.openbrewerydb.org/breweries?by_#{parameter}=#{state}&per_page=50")

		brews_array = JSON.parse(brews)


		brews_array.each do |brew|
			if brew['brewery_type'] != 'planning'
				picture = ('https://source.unsplash.com/random/900%C3%97700/?brewery')
			    Brewery.create(
			        name: brew['name'],
			        street: brew['street'],
			        city: brew['city'],
			        state: brew['state'],
			        postal_code: brew['postal_code'],
			        longitude: brew['longitude'].to_f,
			        latitude: brew['latitude'].to_f,
			        website_url: brew['website_url'],
			        rating: 5,
			        description: Faker::Lorem.paragraph(sentence_count: 5),
			        image: picture
			    )
			end
		end
	end


end
