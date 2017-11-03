# require './records.rb'

# describe Records do
# 	it "is created" 
# 	it "can create a voter record"
	
# 	it "can create a politician record"
	
# 	it "can list all voters"
	
# 	it "can list all politicians"
	
# 	it "can list all records"
	
# 	it "can update a voter"
	
# 	it "can update a politician"

# 	it "can delete a voter"

# 	it "can delete a politician"
	
# end
# 
require './records.rb'

describe Records do
	it "can create a voter and add it to a voter's array" do
		records = Records.new
		records.create_voter("Darth Vader", "Liberal")
		expect(records.voters.count).to eq(1)
	end
	
	it "can create a politician and add it to a politician's array" do
		records = Records.new
		records.create_politician("George Jetson", "Republican")
		expect(records.politicians.count).to eq(1)
	end
end