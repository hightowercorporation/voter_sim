# require './person.rb'

# class Voter < Person
# 	attr_accessor :politics
		
# # 	@@count = 0
# #     @@instances = []
	
# 	def initialize(name, politics)
# 		super(name) 
# 		@politics = politics	
# # 		@@count += 1
# #         @@instances << self
#     end

# #     def update_name(new_name)
# # 		# if voter exists
# # 		if self.is_a? Voter then
# # 			@name = new_name
# # 			return @name
# # 		else
# # 			raise ArgumentError, "Voter #{@name} does not exist"
# # 		end
# # 	end
		
# # 	def verify_voter
# # 		if self.is_a? Voter then
# # 			return true
# # 		elsif
# # 			raise ArgumentError, "Voter #{name} does not exist"
# # 		end
# # 	end
		
# #     def self.all
# #         @@instances.inspect
# #     end

# #     def self.count
# #         @@count
# #     end

# end
require './person.rb'

class Voter < Person
	attr_accessor :politics
	
	def initialize(name,politics)
		super(name)
		@politics=politics
	end
end
		