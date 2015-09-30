class CountriesController < ApplicationController

	def index
		@countries = Country.all.order('name ASC')
	end

	def new
	end

	def create
		@country = Country.new(country_params)
		@country.save
		
		redirect_to @country
	end

	def show
		@country = Country.find(params[:id])
	end

	private
	 	def country_params
			params.require(:country).permit(:name, :alternative_name, :iso_code_2, :iso_code_3, :country_code)
		end

end
