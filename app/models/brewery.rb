class Brewery < ApplicationRecord
	has_many :user_brews
	has_many :users, through: :user_brews
end
