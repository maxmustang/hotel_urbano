class Hotel
	include Mongoid::Document
	include Sunspot::Mongoid2

	field :name
	field :city
	field :state, type: String
	field :country, type: String

	searchable do
    	text :name
    	text :city
  	end

  	embeds_many :periods

  	def add_periods period

  		if not @periods
  			@periods = [period]
  		elsif period.available_on @periods
  			@periods << period
  		end
  	end

	def get_location
		"#{city}, #{state}, #{country}"
	end

	def self.find_on_period(check_in, check_out)
		Hotel.where({
			'periods.check_in' => check_in,
			'periods.check_out' => check_out
		})
	end

	def self.find_by_city_or_name search #autocomplete
		Hotel.search do 
    		fulltext "#{search}"
  		end
	end

	def to_s
		"#{name} - #{get_location}"
	end
end
