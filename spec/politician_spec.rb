require './politician.rb'

describe Politician do
	it "is created with a name and party affiliation" do
		politician = Politician.new("George Jetson", "Republican")
		expect(politician).to be_a(Politician)
	end
	
	it "can report its name" do
		politician = Politician.new("George Jetson", "Republican")
		expect(politician.party).to eq("Republican")
	end
end