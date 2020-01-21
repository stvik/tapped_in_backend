class BreweriesController < ApplicationController

	def index	
	
		Brewery.destroy_all


		if params[:state] 
			Brewery.get_breweries_data('state',params[:state], params[:page])
		elsif params[:name]
			Brewery.get_breweries_data('name', params[:name], '0')
		else
			Brewery.get_breweries_data('state','District of Columbia', '0')
		end

        render json: Brewery.all

    end

	

end
