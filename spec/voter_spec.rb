require './voter.rb'

describe Voter do
	it "is created with a name and political affiliation" do
		voter = Voter.new("Darth Vader", "Liberal")
		expect(voter.name).to eq("Darth Vader")
	end
	
	it "is can report its politics" do
		voter = Voter.new("Darth Vader", "Liberal")
		expect(voter.politics).to eq("Liberal")
	end
end