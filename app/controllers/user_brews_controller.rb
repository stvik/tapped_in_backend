class UserBrewsController < ApplicationController

def index

	
	brews = UserBrew.all.find_all{|u| u.user_id == params[:user_id].to_i}

		

	render json: brews.to_json(:include => {
    :brewery => {:except => [:created_at, :updated_at]},
    :user => {:except => [:created_at, :updated_at]}
  }, :except => [:created_at, :updated_at])
end

def create
	fav = UserBrew.create(user_brew_params)

	render json: fav.to_json(:include => {
    :brewery => {:except => [:created_at, :updated_at]},
    :user => {:except => [:created_at, :updated_at]}
  }, :except => [:created_at, :updated_at])

end

private

def user_brew_params
	params.require(:user_brew).permit(:user_id, :brewery_id, :favorited, :visited)
end

end
