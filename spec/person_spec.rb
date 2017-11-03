# require './person.rb'
	
# describe Person do
# 	it "is created with a name" do
# 		person = Person.new("Darth Vader")
# 		expect(person).to be_a(Person)
# 	end
# 	it "can list all people" do
# 		person = Person.new("Darth Vader")
# 	end
# 	it "can update a person's name" do
		
# 	end
# 	it "can delete a person" do
# 	end
	
# end
require './person.rb'

describe Person do
	it "is created with a name" do
		person = Person.new("Darth Vader")
		expect(person).to be_a(Person)
	end
	
	it "can report its name" do
		person = Person.new("Darth Vader")
		expect(person.name).to eq("Darth Vader")
	end
end