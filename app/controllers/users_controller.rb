class UsersController < ApplicationController

	def index
		render json: User.all
	end

	def create
		new_user = User.create(user_params)

		new_user.update_attributes(image: "https://cdn.shopify.com/s/files/1/1599/6911/products/Baerlic-hop-pin_800x.jpg?v=1500396557")

		render json: new_user
	end

	def login

		user = User.find_by(username: params[:username])

		if user && user[:password] == params[:password]
			render json: user

		end

	end

	private

	def user_params

		params.require(:user).permit(:firstname, :lastname, :username, :bio, :fav_beer)

	end

end
