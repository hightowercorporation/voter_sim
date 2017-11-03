# require './voter.rb'
# require './politician.rb'

# class Records < Person
#     attr_accessor :voters
#     attr_accessor :politicians
	 
# 	 def initialize
#         @voters = []
#         @politicians = []
#     end
	
# 	 def create_voter(name, politics)
#         voter = Voter.new(name, politics)
#         @voters.push(voter)
#     end
	
# 	def list
#         results = ""
        
#         @voters.each do |voter| 
#             results += "Voter, #{voter.name}, #{voter.political_affiliation}\n"
#         end
        
#         @politicians.each do |politician|
#             results += "Politician, #{politician.name}, #{politician.party_affiliation}\n"
#         end
        
#         return results
#     end
#  end