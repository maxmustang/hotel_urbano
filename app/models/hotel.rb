class Hotel
	include Mongoid::Document
	
	field :name
	field :city
	field :state, type: String
	field :country, type: String

  	embeds_many :periods

  	def add_periods period
  		if periods.empty?
  			periods.push period
  		elsif period.available_on? periods
  			periods << period
  		end
  	end

	def get_location
		"#{city}, #{state}, #{country}"
	end

	def self.find_on_period search_term, check_in, check_out
		hotels = find_by_city_or_name search_term

		filtered_hotels = []
	
		hotels.each do |hotel|
			puts hotel.periods
			puts "zueira ai"
			puts hotel.periods.min_by(&:check_in)
			hotel.periods.each do |period|
				filtered_hotels << hotel if period.check_in <= check_in and period.check_out >= check_out
			end
		end
		filtered_hotels
	end

	def self.find_by_city_or_name search
		Hotel.any_of(name: /#{search}/i).any_of(city: /#{search}/i)
	end

	def to_s
		"#{name} - #{get_location}"
	end
end