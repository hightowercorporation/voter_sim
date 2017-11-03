# require './politician.rb'
		
# describe Politician do
# 	it "is created with a name and political affiliation" do
# 		politician = Politician.new("Joe", "Democrat")
# 		expect(politician).to be_a(Person)
# 		expect(politician).to be_a(Politician)
# 	end			

# 	it "it can report it's political affiliation" do
# 		politician = Politician.new("Joe", "Democrat")
# 		expect(politician.affiliation).to eq("Affiliation is Democrat.")
# 	end
# end
# 
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