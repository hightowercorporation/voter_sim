# class Politician < Person
	
# end

class Politician < Person
	
	attr_accessor :registered_party
	
	@@political_affiliation = " "
			
	def initialize(name, party)
		super(name)
		@registered_party = party
		@@political_affiliation = @registered_party
	end
			
	def affiliation
		affiliation = "Affiliation is #{@@political_affiliation}."
	end
end
