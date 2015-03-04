class HotelsController < ActionController::Base	
	def find
		# Date.parse('31/03/2015').strftime("%d-%m-%Y")
		@hotels = Hotel.find_on_period params[:search_term], Date.parse(params[:check_in]), Date.parse(params[:check_out])
	end

	def index
		
	end
end