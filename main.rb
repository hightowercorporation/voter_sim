require './questions.rb'
require './records.rb'

class World
    def initialize
        @records = Records.new
    end

	def main_menu
		Questions.main_menu_options
		option = gets.chomp.downcase
		case option
		when "create", "c", "(c)reate" 
			create
		when "list", "l", "(l)ist"
			puts @records.list
		when "u", "update", "(u)pdate"
			update
		when "d", "delete", "(d)elete"
			delete
		when "x", "exit", "e(x)it"
			return "x"
		end
	end

	def create
		Questions.create_what
		record_type = gets.chomp.downcase

		case record_type
		when "v", "voter", "(voter)"
			Questions.create_name
			name = gets.chomp
			Questions.create_voter_politics
			politics = gets.chomp.downcase
			case politics
			when "l"
				politics = "Liberal"
				@records.create_voter(name, politics)
			when "c"
				politics = "Conservative"
				@records.create_voter(name, politics)
			when "t"
				politics = "Tea Party"
				@records.create_voter(name, politics)
			when "s"
				politics = "Socialist"
				@records.create_voter(name, politics)
			when "n"
				politics = "Neutral"
				@records.create_voter(name, politics)
			else
				Questions.invalid_entry
			end
		when "p", "politician", "(p)olitician"
			Questions.create_name
			name = gets.chomp
			Questions.create_politician_party
			party = gets.chomp.downcase
			case party
			when "d", "democrat", "(d)emocrat"
				party = "Democrat"
				@records.create_politician(name, party)
			when "r", "republican", "(r)epublican"
				party = "Republican"
				@records.create_politician(name, party)
			else
				Questions.invalid_entry
			end
			
		else
			Questions.invalid_entry
		end
	end	
  
	def update
		Questions.update_who
		name = gets.chomp
		index_for_voter = @records.search_voter(name)
        if index_for_voter
			Questions.update_name
			new_name = gets.chomp
			Questions.update_politics
			new_politics = gets.chomp.downcase
			case new_politics
			when "l"
				new_politics = "Liberal"
				@records.update_voter(name,new_name, new_politics)
			when "c"
				new_politics = "Conservative"
				@records.update_voter(name,new_name, new_politics)
			when "t"
				new_politics = "Tea Party"
				@records.update_voter(name,new_name, new_politics)
			when "s"
				new_politics = "Socialist"
				@records.update_voter(name,new_name, new_politics)
			when "n"
				new_politics = "Neutral"
				@records.update_voter(name,new_name, new_politics)
			else
				Questions.invalid_entry
			end
		end
		index_for_politician = @records.search_politician(name)
		if index_for_politician
			Questions.update_name
			new_name = gets.chomp
			Questions.update_party
			new_party = gets.chomp.downcase
			case new_party
			when "d", "democrat", "(d)emocrat"
				party = "Democrat"
				@records.update_politician(name, new_name, new_party)
			when "r", "republican", "(r)epublican"
				party = "Republican"
				@records.update_politician(name, new_name, new_party)
			else
				Questions.invalid_entry
			end
		end
	end
	
	def delete
		Questions.delete_record
		name = gets.chomp
		index_for_voter = @records.search_voter(name)
        if index_for_voter
			Questions.delete_check
			response = gets.chomp.downcase
			case response
			when "y", "yes", "(y)es"
				@records.delete_voter(name)
			when "n","no","(n)o"
				Questions.record_is_safe
			else
				Questions.invalid_entry
			end
		end
		index_for_politician = @records.search_politician(name)
		if index_for_politician
			Questions.delete_check
			response = gets.chomp.downcase
			case response
			when "y", "yes", "(y)es"
				@records.delete_politician(name)
			when "n","no","(n)o"
				Questions.record_is_safe
			else
				Questions.invalid_entry
			end
		end
	end
	world = World.new
	Questions.welcome
	while true 
		if world.main_menu == "x"
			puts "Now leaving Voter Sim"
			break
		end
	end
end