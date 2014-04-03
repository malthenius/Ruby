class Monsters

def zombieAttack()

	puts "\nYou strike the tomb with a dull thud.  The lids of the tombs in the roof explode open in dusty showers of debris.  Ancient, rotted shambling zombies stumble out of their disturbed slumber moving toward you.\n"
	puts "\nCommands:"
	puts "fight zombies, hide, leave"
	
	while true
	game = Game.new()
	game.prompt; nextMove = gets.chomp()

		if nextMove == "fight zombies"
			puts "\nYou are overwhelmed by the zombie horde and eaten alive.\n"
			Process.exit(0)
			elsif nextMove == "hide"
				puts "\nYou deftly slink into the shadows and hide behind a toppled chunk of stone in the corner of the room. The zombies eventually stumble back into their tombs and become inert. You see the stone door open as if by magic."
				puts "\nCommands:"
				puts "stop hiding, leave"
				
				game = Game.new()
				game.prompt; nextMove = gets.chomp()
			
			if nextMove == "stop hiding"
				room = StoneRoom.new()
				room.stoneRoomDescription()
			elsif nextMove == "leave"
				room = StoneRoom.new()
				room.startRoom()
			else
			game.notAnOption()
			end
				
		elsif nextMove == "leave"
			puts "The door from which you entered the room is closed and won't budge."
		else 
			game.notAnOption()
		end
	end
  end
end
