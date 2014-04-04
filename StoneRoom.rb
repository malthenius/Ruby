class StoneRoom
require_relative 'RubyAltarTrap'
require_relative 'Monsters'

$stoneRoom = StoneRoom.new()

def stoneRoomDescription()
	puts "\nYou stand in a large room lined with dust-covered, stone tombs."
	puts "The air is thick with the smell of mold and the stuffiness of long neglect.\n"
	puts "\nCommands:"
	puts "look around, leave, kick tomb, inspect tombs, nevermind"
	
  while true
	$game.prompt; nextMove = gets.chomp
	
	if nextMove ==  "look around" and $winCondition == false
		puts "\nAt the far end of the room, you see something perched on top of an altar.\n"
		puts "\nCommands:"
		puts "inspect altar, nevermind"
		
		$game.prompt; nextMove = gets.chomp
			
			if nextMove == "inspect altar" 
				$rubyAltar.rubyAltar()
			
			elsif 
			nextMove == "nevermind"
				stoneRoomDescription()
			else
				puts $notAnOption
			end
	
	elsif nextMove ==  "look around" and $winCondition == true
	stoneRoomDescription()
	
	elsif nextMove ==  "leave"
		startRoom()
	
	elsif nextMove == "inspect tombs" or "kick tomb" and $crankyZombies == true
		$monsters.waryZombies()
	
	elsif nextMove == "inspect tombs" and $crankyZombies == false
		puts "\nThere are dozens of tombs in this room."
		puts "All of them appear undisturbed for centuries.\n"
		puts "\nCommands:"
		puts "kick tomb, nevermind"
	elsif nextMove == "kick tomb"
		$crankyZombies = true
		$monsters.zombieAttack()
	elsif nextMove == "nevermind"
		stoneRoomDescription()
	else
		puts $notAnOption
	end
   end
end
   def startRoom()
	puts "You are back at the starting room of the temple."
	puts "There is a stone door in front of you."
	puts "\nCommands:"
	puts "open stone door, leave"
	
	$game.prompt; nextMove = gets.chomp()
	
		if nextMove == "open stone door"
			$stoneRoom.stoneRoomDescription()
		
		elsif nextMove == "leave"  
			$game.guildDeath()
			Process.exit(0)
		else 
			puts $notAnOption
		end
	end
 end
