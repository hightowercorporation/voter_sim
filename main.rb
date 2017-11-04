require './questions.rb'
exit = false

Questions.welcome
Questions.main_menu_options
#puts "\n""Options: (C)reate, (L)ist, (U)pdate, (D)elete, e(X)it"
 
#Loop until user enters exit
while not exit do
	 option = gets.chomp
	case option
	when "create", "CREATE", "Create" , "C",  "c" 
		puts "Creating"
	when "update", "UPDATE", "Update" , "U" , "u"
		puts "Updating"
	when "list", "LIST", "List" , "L" , "l"
		puts "Listing"
	when "delete", "DELETE", "Delete" , "D" , "d"
		puts "Deleting"
	when "exit", "EXIT", "Exit", "eXit", "X", "x"
		puts "Exiting"
		exit = true
	when "cheat", "CHEAT", "Cheat", "eat", "EAT"
		Questions.cheat
	else
		puts "Enter a valid selection"
	end
 end