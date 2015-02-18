class Hotel
	include Mongoid::Document
	include Sunspot::Mongoid2

	field :name
	field :city, type: String
	field :state, type: String
	field :country, type: String

	searchable do
    	text :name
    	string :city
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

	def self.find_by_city_or_name search
		Hotel.search do 
    		any_of do
      			with(:name, search)
      			with(:city, search)
    		end
  		end
	end

	def self.teste search
		Hotel.search do 
    		fulltext "#{search}"
  		end
	end

	def to_s
		"#{name} - #{get_location}"
	end

end
