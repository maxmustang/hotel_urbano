class HotelsController < ActionController::Base	
	def index
		@hotels = Hotel.all
	end
end