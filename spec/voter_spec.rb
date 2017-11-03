# require './voter.rb'

# describe Voter do

# #Test one for count, placed at top of test to only include the count of voters
# ##in the test, if placed after other tests, will have to adjust count or clear Voters
# #
# 	it "can create multiple voters" do
# 		voter_one = Voter.new("Darth Vader", "Liberal")
# 		voter_two = Voter.new("Barth Wader", "Conservative")
# 		expect(Voter.count).to eq(2)
# 	end
# #Test two for count.
# # 	it "can create multiple voters" do
# # 		voter_one = Voter.new("Darth Vader", "Liberal")
# # 		voter_two = Voter.new("Barth Wader", "conservative")
# # 		expect(ObjectSpace.each_object(Voter).count).to eq(2)
# # 	end
	
# 	it "it created with a name and politics" do
# 		voter = Voter.new("Darth Vader", "Liberal")
# 		expect(voter).to be_a(Voter)
# 	end
	
# 	it "can report its name" do
# 		voter = Voter.new("Darth Vader", "Liberal")
# 		expect(voter.name).to eq("Darth Vader")
# 	end		
	
# 	it "can report its affiliation" do
# 		voter = Voter.new("Darth Vader", "Liberal")
# 		expect(voter.politics).to eq("Liberal")
# 	end
# 	it "can update a voter's name" do
# 		voter = Voter.new("Darth Vader", "Liberal")
# 		voter.update_name("Barth Wader")
# 		expect(voter.name).to eq("Barth Wader")
# 	end
# 	it "can verify that a voter exists" do
# 		voter = Voter.new("Darth Vader", "Liberal")
# 		expect(voter.verify_voter).to eq(true)
		
# # 				expect(account_zero.to_s.is_a?).to be_a(BankAccount) 
# 	end
# end
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