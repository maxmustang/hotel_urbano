class Period
	attr_accessor :check_in, :check_out

	include Mongoid::Document

	field :check_in, type: Date
	field :check_out, type: Date

	embedded_in :hotel

	def available_on periods 
		periods.any? { |p| 
			!invalid_perid? p
		}
	end
	
	def to_s
		"Period in check_in: #{check_in}, check_out: #{check_out}"
	end

	private 
	def invalid_perid? period
		valid_check_in_on_period? period or valid_check_out_on_period? period
	end

	def valid_check_in_on_period? period
		(@check_in > period.check_in and @check_in < period.check_out)
	end 

	def valid_check_out_on_period? period
		(@check_out > period.check_in and @check_out < period.check_out)
	end

end
