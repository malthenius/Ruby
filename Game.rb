class Game
# UPDATE ROOMS TO REFLECT RUBY IS TAKEN
# UPDATE ROOMS TO REFLECT ZOMBIES DISTURBED?
require_relative 'StoneRoom'
require_relative 'Monsters'
$winCondition = false

	def guildDeath()
		if $winCondition == false
			puts "\nStepping outside of the temple you are cut down by the blades of senior thieves guild members for cowardice.\n"
		else puts "\nStepping outside, you are welcomed with open arms by your brothers an sisters of the thieves guild.  You've won!"
		end
	end

	def notAnOption()
		puts "That isn't an option right now."
	end

	def prompt()
		print ">"
	end

	def start()
		puts "------WELCOME TO THE TEMPLE OF TRIALS!------\n"
		puts "\nType quit to exit the game.\n"
		puts "\nYou are an apprentice thief."
		puts "You are tasked with thwarting the threats within this temple."
		puts "You see a stone door in front of you."
		puts "\nCommands:"
		puts "open stone door, leave"

		while true
		prompt; nextMove = gets.chomp()

			if nextMove == "open stone door"
				stoneRoom = StoneRoom.new()
				stoneRoom.stoneRoomDescription()
			elsif nextMove == "leave"
				game = Game.new()
				puts game.guildDeath
				Process.exit(0)
			elsif nextMove == "quit"
				quit()
			else
				game = Game.new()
				puts game.notAnOption()
			end
		end
	 end
	 
	 def quit()
		puts "Goodbye!"
		Process.exit(0)
	 end
	end
game = Game.new()
game.start()