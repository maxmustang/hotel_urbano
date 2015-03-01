class Period
	# attr_accessor :check_in, :check_out

	include Mongoid::Document

	field :check_in, type: Date
	field :check_out, type: Date

	validates_presence_of :check_in, :message => "Data de check_in deve ser informado"
	validates_presence_of :check_out, :message => "Data de check_out deve ser informado"
	validate :check_out_must_be_greater_than_check_in

	embedded_in :hotel

	def available_on? periods 
		if(has_void? periods)
			return false
		else
			return true
		end
	end
	
	def to_s
		"Period in check_in: #{check_in}, check_out: #{check_out}"
	end

	private 
	def has_void? periods
		period_with_lower_check_in = periods.min_by(&:check_in)

		period_with_higher_check_out = periods.max_by(&:check_in)

		if check_out_is_higher_than_check_in? period_with_lower_check_in or check_in_is_higher_than_check_out? period_with_higher_check_out
			false
		else 
			true
		end
			
	end

	def check_out_is_higher_than_check_in? period
		check_out == period.check_in.yesterday
	end

	def check_in_is_higher_than_check_out? period
		check_in == period.check_out.tomorrow
	end

	def check_out_must_be_greater_than_check_in
		if check_out < check_in
			errors.add(:check_out, "precisa ser posterior que check_in")
		end
	end

end
