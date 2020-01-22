require 'faker'

class UsersController < ApplicationController

	def login
	
		user = User.find_by(username: params[:username])

		if user && user[:password] == params[:password]
			render json: user

		end

	end
	def index
		render json: User.all
	end

	def create
		new_user = User.create(user_params)

		new_user.update_attributes(image: 'https://source.unsplash.com/random/900%C3%97700/?person')

		render json: new_user
	end


	private

	def user_params

		params.require(:user).permit(:firstname, :lastname, :username, :bio, :password)

	end

end
