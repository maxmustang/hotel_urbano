class HotelsController < ActionController::Base	
	def index
		hotels = Hotel.all

		render :json => {hotels: hotels}
	end
end