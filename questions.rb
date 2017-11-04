module Questions
	#all questions and statements here
	 def self.welcome
		 puts "Welcome to Voter Simulation, Diebold edition!"
	 end
	
	def self.main_menu_options 
		puts "\n""What would you like to do?"
		puts "\n""Options: (C)reate, (L)ist, (U)pdate, (D)elete, e(X)it"
	 end

	def self.create_what
		puts "\n""What would you like to create?"
		puts "\n""(P)olitician or (V)oter"
	end

	def self.create_what
		puts "\n""What would you like to create?"
		puts "\n""(P)olitician or (V)oter"
	end

	def self.create_name
		puts "\n""Name?"
	end

	def self.create_politician_party
		puts "\n""Party?"
		puts "\n""(D)emocrat or (R)epublican"
	end

	def self.create_voter_politics
		puts "\n""Politics?"
		puts "\n""(L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral"
	end

	def self.update_who
		puts "\n""Who would you like to update?"
	end

	def self.update_name
		puts "\n""New name?"
	end

	def self.update_politics
		puts "\n""New Politics"
	end

	def self.update_party
		puts "\n""New Party?"
	end

	def self.delete_record
		puts "\n""Who would you like to delete?"
	end

	def self.delete_check
		puts "\n""Are you sure?"
	end
	
	def self.cheat
		puts "Eating the rich"
		puts "Deleting all voters"
		puts "Deleting all politicians"
		puts "Eliminating all credit card debt"
		puts "42"
	end
end