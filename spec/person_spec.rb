# require './person.rb'
 	
# describe Person do
# 	it "can delete a person" do

# 	end
	
# end
# 
#
#


		# Rubyist: David helping Leslie
		#I-O Avenue, Highway - Fall 2017 cohort
		# Project-3: Voter Simulation
		#
		#Test for Person class object
		
		require './person.rb'
		
		describe Person do
			
			it "is created with a name" do
				person = Person.new("Delaney")
				expect(person).to be_a(Person)
			end
		end
