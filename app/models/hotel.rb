class Hotel
	include Mongoid::Document
	
	field :name
	field :city
	field :state, type: String
	field :country, type: String
	field :image_path, type: String
	field :description


	embeds_many :periods

	def add_periods period
		if periods.empty?
			periods.push period
		elsif period.available_on? periods
			periods << period
		else
			raise PeriodNotAdded.new("Periodo nao pode ser adicionado")
		end
	end

	def get_location
		"#{city}, #{state}, #{country}"
	end

	def self.find_on_period search_term, check_in, check_out
		hotels = Hotel.find_by_city_or_name search_term

		filtered_hotels = []
	
		hotels.each do |hotel|
			if not hotel.periods.empty?
				higher_check_out = hotel.periods.max_by(&:check_out)
				lower_check_in = hotel.periods.min_by(&:check_in)
				filtered_hotels << hotel if check_in >= lower_check_in.check_in && check_out <= higher_check_out.check_out
			end
		end
		filtered_hotels
	end

	def self.find_by_city_or_name search_term
		Hotel.any_of({name: /#{search_term}/i}, {city: /#{search_term}/i})
	end

	def self.get_destination search
		hotels = Hotel.any_of(name: /#{search}/i).distinct(:name)
		cities = Hotel.any_of(city: /#{search}/i).distinct(:city)

		hotels + cities
	end

	def to_s
		"#{name} - #{get_location}"
	end

	index({name:1, city:1})
end