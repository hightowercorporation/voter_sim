require './voter.rb'

describe Voter do

	it "it created with a name and politics" do
		voter = Voter.new("Darth Vader", "Liberal")
		expect(voter).to be_a(Voter)
	end
	
	it "can report its name" do
		voter = Voter.new("Darth Vader", "Liberal")
		expect(voter.name).to eq("Darth Vader")
	end		
	
	it "can report its affiliation" do
		voter = Voter.new("Darth Vader", "Liberal")
		expect(voter.politics).to eq("Liberal")
	end
	it "can update a voter's name" do
		voter = Voter.new("Darth Vader", "Liberal")
		voter.update_name("Barth Wader")
		expect(voter.name("Barth Wader").to eq("Barth Wader"))
	end
	it "can verify that a voter exists" do
		voter = Voter.new("Darth Vader", "Liberal")
		expect(voter.verify_voter("Darth Vader")).to eq(true)
		
# 				expect(account_zero.to_s.is_a?).to be_a(BankAccount) 
	end
end