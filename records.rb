 class Records < Person
	attr_reader :name
	 
	 def initialize(record)
		 record = Records.new[]
	 end
 end