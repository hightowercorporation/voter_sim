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
	
	it "can list all voters and politicians" do
		records = Records.new
		records.create_voter("Darth Vader", "Liberal")
		records.create_politician("George Jetson", "Republican")
		
		expected_result = "Voter, Darth Vader, Liberal\nPolitician, George Jetson, Republican\n"
		expect(records.list).to eq(expected_result)
	end
	
	it "can search for a voter by name" do 
		records = Records.new
		
		records.create_voter("Darth Vader", "Liberal")
		records.create_voter("Joe Mancuso", "Socialist")
		records.create_voter("Libby Anderson", "Green Party")
		
		index_for_existing_voter = records.search_voter("Darth Vader")
		index_for_nonexisting_voter = records.search_voter("Q")

		expect(index_for_existing_voter).to eq(0)
		expect(index_for_nonexisting_voter).to eq(nil)
	end
	
	it "can search for a politician by name" do
		records = Records.new
		
		records.create_politician("Snidely Whiplash", "Democrat")
		records.create_politician("Henry Fonda", "Republican")
		records.create_politician("Ken Tirunda", "Independent")
		
		index_for_existing_politician = records.search_politician("Ken Tirunda")
		index_for_nonexisting_politician = records.search_politician("Bobby Henderson")
		
		expect(index_for_existing_politician).to eq(2)
		expect(index_for_nonexisting_politician).to eq(nil)
	end

	it "can update a voter" do
		record = Records.new
		
		record.create_voter("Kyle Jin", "Liberal")
		record.create_voter("Kimberly June", "Conservative")
# 		record.create_voter("Kyle Jin", "Liberal")
		record.update_voter("Kyle Jin", "Joseph Green", "Socialist")
		
		expect(record.voters[0].name).to eq("Joseph Green") 
		expect(record.voters[0].politics).to eq("Socialist")
# 		expect(record.voters[2].name).to eq("Joseph Green") 
# 		expect(record.voters[2].politics).to eq("Socialist")
	end
	
	it "can update a politician" do
		record = Records.new
		
		record.create_politician("Sander Van Doorn", "Republican")
		record.create_politician("Pablo Finduval", "Democrat")
# 		record.create_voter("Kyle Jin", "Liberal")
		record.update_politician("Pablo Finduval", "Orlando Mustaffah", "Republican")
		
		expect(record.politicians[1].name).to eq("Orlando Mustaffah") 
		expect(record.politicians[1].party).to eq("Republican")
# 		expect(record.voters[2].name).to eq("Joseph Green") 
# 		expect(record.voters[2].politics).to eq("Socialist")
	end
	
	it "can delete a voter" do
		records = Records.new 
		
		records.create_voter("Darth Vader", "Liberal")
		records.create_voter("Lindsay Lohan", "Socialist")
		
		expect(records.voters.count).to eq(2)
		
		records.delete_voter("Lindsay Lohan")
		
		expect(records.voters.count).to eq(1)
		expect(records.search_voter("Lindsay Lohan")).to eq(nil)
		
	end
	it "can delete a politician" do
		records = Records.new 
		
		records.create_politician("Darth Vader", "Liberal")
		records.create_politician("Lindsay Lohan", "Socialist")
		
		expect(records.politicians.count).to eq(2)
		
		records.delete_politician("Lindsay Lohan")
		
		expect(records.politicians.count).to eq(1)
		expect(records.search_politician("Lindsay Lohan")).to eq(nil)
		
	end
end
