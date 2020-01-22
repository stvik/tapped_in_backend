class UserBrewsController < ApplicationController

def index
	render json: UserBrew.all.to_json(:include => {
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
