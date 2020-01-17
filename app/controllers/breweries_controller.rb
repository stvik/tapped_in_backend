class BreweriesController < ApplicationController

	def index

		Brewery.destroy_all

		if params[:state]
			Brewery.get_breweries_data('state',params[:state])
		elsif params[:name]
			Brewery.get_breweries_data('name',params[:name])
		else
			Brewery.get_breweries_data('state','District of Columbia')
		end

        render json: Brewery.all.sort_by{|brewery| brewery[:name]}
    end

	

end
