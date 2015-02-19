class Period
	attr_accessor :check_in, :check_out

	include Mongoid::Document

	field :check_in, type: Date
	field :check_out, type: Date

	embedded_in :hotel

	def available_on periods #todo me melhore
		periods.any? { |p| 
			# (p.check_in < @check_in and p.check_out > @check_in) or (p.check_in < @check_out and p.check_out > @check_out)
			!((@check_in > p.check_in and @check_in < p.check_out) or (@check_out > p.check_in and @check_out < p.check_out))
		}
	end
	
	def to_s
		"check_in: #{check_in}, check_out: #{check_out}"
	end

end
