class Game
require_relative 'StoneRoom'

$game = Game.new()
$notAnOption = "That isn't an option right now."
$winCondition = false
$gameOver = "\nG A M E  O V E R\n"
$youWon = "YOU WON!"

def start()
		puts "------WELCOME TO THE TEMPLE OF TRIALS!------\n"
		puts "\nYou are an apprentice thief."
		puts "You are tasked with surviving the traps"
		puts "of this temple and retrieving something of"
		puts "value to prove your worthiness to your guild mates."
		puts "You see a stone door in front of you."
		puts "\nCommands:"
		puts "open stone door, leave"
		
		while true
		prompt; nextMove = gets.chomp()
		
			if nextMove == "open stone door"
				$stoneRoom.stoneRoomDescription()
			elsif nextMove == "leave"
				guildDeath()
				Process.exit(0)
			elsif nextMove == "quit"
				quit()
			else
				puts $notAnOption
			end
		end
	 end

	def guildDeath()
		if $winCondition == false
			puts "\nStepping outside of the temple you are cut down by the blades"
			puts "of senior thieves guild members for cowardice.\n"
			puts $gameOver
		else puts "\nStepping outside, you are welcomed with open arms by your"
			puts "brothers an sisters of the thieves guild."
			puts $youWon
		end
	end

	def prompt()
		print ">"
	end
end
game = Game.new()
game.start()