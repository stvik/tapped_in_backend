class User < ApplicationRecord
	has_many :user_brews
	has_many :breweries, through: :user_brews
end
