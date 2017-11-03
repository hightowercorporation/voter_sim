# require './person.rb'

# class Politician < Person
# 	attr_accessor :party

# 	def initialize(name, party)
# 		super(name)
# 		@party = party
# 	end
			
# 	def affiliation
# 		affiliation = "Affiliation is #{@@political_affiliation}."
# 	end
# end
require './person.rb'

class Politician < Person
	attr_accessor :party
	
	def initialize(name, party)
		super(name)
		@party = party
	end
end