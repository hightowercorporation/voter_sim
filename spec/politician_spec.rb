# require './politician.rb'

# describe Politician do

# end

require './politician.rb'
		
describe Politician do
	it "is created with a name and political affiliation" do
		politician = Politician.new("Joe", "Democrat")
		expect(politician).to be_a(Person)
		expect(politician).to be_a(Politician)
	end			

	it "it can report it's political affiliation" do
		politician = Politician.new("Joe", "Democrat")
		expect(politician.affiliation).to eq("Affiliation is Democrat.")
	end
end