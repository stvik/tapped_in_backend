class BreweriesController < ApplicationController

	def index	
	
		if params[:state] 
			breweries = Brewery.get_breweries_data('state',params[:state], params[:page])

		elsif params[:city]
			breweries = Brewery.get_breweries_data('city', params[:city], '1')
		elsif params[:name]
			breweries = Brewery.get_breweries_data('name', params[:name], '1')
		else
			breweries = Brewery.get_breweries_data('state','District of Columbia', '1')
		end

        render json: breweries

    end

    def create
    	brewery = Brewery.create(brewery_params)

    	render json: brewery
    end

    private

    def brewery_params
    	params.require(:brewery).permit(:name, :street, :city, :state, :postal_code, :longitude, :latitude, :website_url, :rating, :description, :image)
    end

	

end
