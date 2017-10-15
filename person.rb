# class Person
# 	attr_reader :name
	
# 	def initialize(name)
		
# 	end
		
# 	def delete_person(person_name)
				
# 	end
		
# 	def create_person(person_name)		
# 		person_name = Person.new
# 	end
		
# 	def update_person
# 	end
		
# 	def list_person
# 	end
	
# 	def is_person_politician
# 	end

# 	def is_person_a_voter
# 	end
	
# end
# 

class Person

attr_accessor :person_name
@@name = " "

	def initialize(name)
 		if name == " "
			raise ArgumentError
		else
			@person_name = name
			@@name = @person_name
		end
	end


	def person_name
		person_name = "Person is named #{@@name}."
	end
	
	def name_update(new_name)
		if new_name == " " 
			raise ArgumentError
		else
			@person_name = new_name
			@@name = @person_name
			puts "Person is named #{@@name}."
		end
	end
end

