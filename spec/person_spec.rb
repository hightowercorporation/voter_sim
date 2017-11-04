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