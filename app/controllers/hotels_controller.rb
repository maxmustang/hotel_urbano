class HotelsController < ActionController::Base	
	def find
		@hotels = Hotel.find_on_period params[:search_term], Date.parse(params[:check_in]), Date.parse(params[:check_out])
	end

	def destination
		@hotels = Hotel.find_by_city_or_name params[:search_term]
	end

	def index
		
	end
end