require './person.rb'
	
class Voter < Person
	attr_reader :politics
	attr_reader :name
	
	def initialize(name, politics)
		super(name) 
		@politics = politics	
	end	
	
	def update_name(new_name)
		# if voter exists
		if self.is_a? Voter then
			@name = new_name
			return @name
		else
			raise ArgumentError, "Voter #{@name} does not exist"
		end
	end
		
	def verify_voter(name)
		if name.to_s.is_a? Voter then
			return true
		elsif
			raise ArgumentError, "Voter #{name} does not exist"
		end
	end
		
end