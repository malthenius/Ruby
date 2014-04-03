class StoneRoom

$rubyTrapDisabled = false

def stoneRoomDescription()
	puts "\nYou stand in a large hallway lined with dust-covered, stone tombs.  The air is thick with the smell of mold and the stuffiness of long neglect.\n"
	puts "\nCommands:"
	puts "look around, leave, kick tomb, inspect tombs, nevermind"
	
  while true
	game = Game.new()
	game.prompt; nextMove = gets.chomp
	
	if nextMove ==  "look around" 
		puts "\nAt the far end of the room, you see something perched on top of an altar.\n"
		puts "\nCommands:"
		puts "inspect altar, nevermind"
		
		game = Game.new()
		game.prompt; nextMove = gets.chomp	
			
			if nextMove == "inspect altar"
				rubyAltar()
			elsif nextMove == "nevermind"
				stoneRoomDescription()
			else
				game.notAnOption()
			end
			
	elsif nextMove ==  "leave"
		startRoom()
	
	elsif nextMove == "inspect tombs"
		puts "\nThere are dozens of tombs in this room.  All of them appear undisturbed for centuries.\n"
		puts "\nCommands:"
		puts "kick tomb, nevermind"
	elsif  nextMove == "kick tomb"
		zombie = Monsters.new()
		zombie.zombieAttack()
	elsif nextMove == "nevermind"
		stoneRoomDescription()
	else
		puts game.notAnOption
	end
   end
end
   def startRoom()
	puts "You are back at the starting room of the temple.  There is a stone door in front of you."
	puts "\nCommands:"
	puts "open stone door, leave"
	
	game = Game.new()
	game.prompt; nextMove = gets.chomp()
	
		if nextMove == "open stone door"
			stoneRoomDescription()
		
		elsif nextMove == "leave"  
			game.guildDeath()
			Process.exit(0)
		else 
			game.notAnOption()
		end
	end
	
	def rubyAltar()

	puts "\nOn top of the altar stands a giant ruby.  It's blood red color stands out starkly among the dusty remnants of the rest of the room.\n"
	puts "\nCommands:"
	puts "steal ruby, leave, inspect ruby, inspect altar"
	
	while true
	game = Game.new()
	game.prompt; nextMove = gets.chomp

		if nextMove == "steal ruby"
			puts "\nYou hear stone sliding from above and are crushed by the weight of a massive boulder that falls from the the dark ceiling; no doubt a trap attached to the ruby and its altar. Your vision goes black, and you die.\n"
			Process.exit(0)

		elsif nextMove == "leave"
			startRoom()
		
		elsif nextMove == "inspect ruby"
			puts "\nIt's the biggest ruby you've ever seen; about the size of a large grapefruit. Taking this back to the guild would surely secure your place in the organization."
			puts "\nCommands:"
			puts "steal ruby, leave, inspect ruby, inspect altar"
		
		elsif nextMove == "inspect altar"
				rubyTrapNotice()
			
		else
				game.notAnOption()
		end

	end
	end
 
 def rubyTrapNotice()
 
	puts "\nYou notice a strange contraption attached to the altar that connects to the ceiling. It looks like a trap.\n"
	puts "\nCommands:"
	puts "disable trap, nevermind"
		
	game = Game.new()
	game.prompt; nextMove = gets.chomp	
	
	if nextMove == "disable trap"
		rubyAltarDisabledDescription()
	elsif nextMove == "nevermind"
		rubyAltarDescription()
	else
		game.notAnOption()
	end
end
		
def rubyAltarDisabledDescription()

	$rubyTrapDisabled = true
	puts "\nYou successfully disable the altar trap.  The ruby sits ripe for the taking.\n"	
	puts "\nCommands:"
	puts "take ruby, leave"
	
	while true
	game = Game.new()
	game.prompt; nextMove = gets.chomp
	
	if nextMove == "take ruby"
		puts "You place the giant ruby into your backpack."
		puts "\nCommands:"
		puts "leave"
		$winCondition = true
	elsif nextMove == "leave"
		stoneRoomDescription()
	else
		game.notAnOption()
	end
    end
 end
 
 def rubyAltarTrapDisabled()
 
 	puts "\nThe large ruby rests on the altar, your successful disarmament of the altar trap has left long strips of uncovered stone amidst the dusty surroundings.\n"
	puts "\nCommands:"
	puts "take ruby, leave"
	
  while true
  game = Game.new()
  game.prompt; nextMove = gets.chomp
	
	if nextMove == "take ruby"
		puts "You place the giant ruby into your backpack."
		puts "\nCommands:"
		puts "leave"
		$winCondition = true
	elsif nextMove == "leave"
		stoneRoomDescription()
	else
		game.notAnOption()
	end
  end
 end
end