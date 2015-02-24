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
		periods.any? { |p| 
			!invalid_perid? p
		}
	end
	
	def to_s
		"Period in check_in: #{check_in}, check_out: #{check_out}"
	end

	private 
	def invalid_perid? period
		check_in_is_on_the_correct_period? period or check_out_is_on_the_correct_period? period
	end

	def check_in_is_on_the_correct_period? period
		(check_in > period.check_in and check_in < period.check_out)
	end 

	def check_out_is_on_the_correct_period? period
		(check_out > period.check_in and check_out < period.check_out)
	end

	def check_out_must_be_greater_than_check_in
		if check_out < check_in
			errors.add(:check_out, "precisa ser posterior que check_in")
		end
	end

end
