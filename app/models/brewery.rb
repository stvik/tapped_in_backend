require 'net/http'
require 'uri'

class Brewery < ApplicationRecord
	has_many :user_brews
	has_many :users, through: :user_brews

	def self.should_destroy_all

	end

	def self.get_breweries_data(search_by, value, page)

		random_picture = ['https://inteng-storage.s3.amazonaws.com/img/iea/yrwQq25awN/sizes/healthy-beer-gut_resize_md.jpg',
							'https://www.catholicnewsagency.com/images/Beer_Credit_Africa_Studio_Shutterstock_CNA.jpg?w=760',
							'https://assets.newatlas.com/dims4/default/7a5cca9/2147483647/strip/true/crop/2000x1334+0+0/resize/1160x774!/quality/90/?url=https%3A%2F%2Fassets.newatlas.com%2Fb1%2F2e%2Fc3b2baab41a1b377d075b9001120%2Fdepositphotos-164150728-l-2015.jpg',
							'https://cdn.britannica.com/96/90096-050-514D5088/Glasses-beer-bar-Brussels.jpg',
							'https://www.dw.com/image/43830445_303.jpg',
							'https://static.vinepair.com/wp-content/uploads/2019/10/HBMandy-oct15-Mobile.jpg',
							'https://cdn.shopify.com/s/files/1/1100/8742/products/TH2500-1001_Tap_House_2_1080x1080.jpg?v=1527185726',
							'https://concordtaphouse.com/wp-content/uploads/2018/07/ConcordTapHouse-139.jpg',
							'https://i.pinimg.com/originals/03/1e/a6/031ea625e771b55fc99a831734f7217c.jpg',
							'http://secureservercdn.net/184.168.47.225/18d.9cd.myftpupload.com/wp-content/gallery/homepagegallery/Outside_3August.JPG'
							]

		brews = RestClient.get("https://api.openbrewerydb.org/breweries?by_#{search_by}=#{value}&sort=name&per_page=50&page=#{page}")

		brews_array = JSON.parse(brews)


		brews_array.each do |brew|
			if brew['brewery_type'] != 'planning'
			
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
			        image: random_picture.sample
			    )
			end
		end
	end


end
