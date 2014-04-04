class Monsters

$crankyZombies = false
$monsters = Monsters.new()

def zombieAttack()

	puts "\nYou strike the tomb with a dull thud."  
	puts "The lids of the tombs in the roof explode open in"
	puts "dusty showers of debris.  Ancient, rotted, shambling"
	puts "zombies stumble out of their disturbed slumber moving toward you.\n"
	puts "\nCommands:"
	puts "fight zombies, hide, leave"
	
	while true
	$game.prompt; nextMove = gets.chomp()

		if nextMove == "fight zombies"
			puts "\nYou are overwhelmed by the zombie horde and eaten alive.\n"
			puts $gameOver

			Process.exit(0)
			elsif nextMove == "hide"
				puts "\nYou deftly slink into the shadows and hide behind"
				puts "a toppled chunk of stone in the corner of the room." 
				puts "The zombies eventually stumble back into their tombs and become inert." 
				puts "You see the stone door open as if by magic."
				puts "\nCommands:"
				puts "stop hiding, leave"
				
				$game.prompt; nextMove = gets.chomp()
			
			if nextMove == "stop hiding"
				$stoneRoom.stoneRoomDescription()
			elsif nextMove == "leave"
				$stoneRoom.startRoom()
			else
			puts $notAnOption
			end
				
		elsif nextMove == "leave"
			puts "The door from which you entered the room is closed and won't budge."
		else 
			puts $notAnOption
		end
	end
end
  
  def waryZombies()
	puts "\nThe zombies, having been disturbed by you previously,"
	puts "spring from their tombs and land on top of you, biting"
	puts "and tearing at your body, feasting on your sweetbreads.\n"
	puts $gameOver
	Process.exit(0)
  end
end