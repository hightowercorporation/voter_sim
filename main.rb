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
  
	world = World.new
	Questions.welcome
	while true 
		if world.main_menu == "x"
			puts "Now leaving Voter Sim"
			break
		end
	end
end