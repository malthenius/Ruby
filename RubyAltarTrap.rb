class RubyAltarTrap

$rubyAltar = RubyAltarTrap.new()

@@rubyTrapDisabled = false

  def rubyAltar()

	puts "\nOn top of the altar stands a giant ruby."
	puts "It's blood red color stands out starkly among"
	puts "the dusty remnants of the rest of the room.\n"
	puts "\nCommands:"
	puts "steal ruby, leave, inspect ruby, examine altar"
	
	while true
	$game.prompt; nextMove = gets.chomp

		if nextMove == "steal ruby" and @@rubyTrapDisabled == false 
			puts "\nYou hear stone sliding from above and"
			puts "are crushed by the weight of a massive boulder.\n"
			puts $gameOver
			Process.exit(0)
		elsif
			nextMove == "steal ruby" and @@rubyTrapDisabled == true 
			rubyTaken()

		elsif nextMove == "leave"
			$stoneRoom.startRoom()
		
		elsif nextMove == "inspect ruby"
			puts "\nIt's the biggest ruby you've ever seen; about the"
			puts "size of a large grapefruit. Taking this back to the"
			puts "guild would surely secure your place in the organization."
			puts "\nCommands:"
			puts "steal ruby, leave, inspect ruby, examine altar"
		
		elsif nextMove == "examine altar" and @@rubyTrapDisabled == true
			puts "\nThere are no other traps attached to this altar.\n"
		
		elsif nextMove == "examine altar"
			rubyTrapNotice()
		else
			puts $notAnOption
		end
	end
  end
	
  def rubyTrapNotice()
 
	puts "\nYou notice a strange contraption attached to the altar that" 
	puts "connects to the ceiling. It looks like a trap.\n"
	puts "\nCommands:"
	puts "disable trap, nevermind"
		
	game = Game.new()
	game.prompt; nextMove = gets.chomp	
	
	if nextMove == "disable trap"
		rubyAltarDisabledDescription()
	elsif nextMove == "nevermind"
		rubyAltarDescription()
	else
		puts $notAnOption
	end
  end
		
  def rubyAltarDisabledDescription()

	
	puts "\nYou successfully disable the altar trap."
	puts "The ruby sits ripe for the taking.\n"	
	puts "\nCommands:"
	puts "take ruby, leave"
	
	@@rubyTrapDisabled = true
	
	while true
	$game.prompt; nextMove = gets.chomp
	
	 if nextMove == "take ruby"
		rubyTaken()
		
	 elsif nextMove == "leave"
		stoneRoomDescription()
	 else
		puts $notAnOption
	 end
    end
  end
 
  def rubyAltarTrapDisabled()
 
 	puts "\nThe large ruby rests on the altar, your successful"
	puts "disarmament of the altar trap has left long strips of"
	puts "uncovered stone amidst the dusty surroundings.\n"
	puts "\nCommands:"
	puts "take ruby, leave"
	
	  while true
	  $game.prompt; nextMove = gets.chomp
	
		if nextMove == "take ruby"
			puts "You place the giant ruby into your backpack."
			puts "\nCommands:"
			puts "leave"
			
			$winCondition = true
		
		elsif nextMove == "leave"
			$stoneRoom.stoneRoomDescription()
		else
			puts $notAnOption
		end
	  end
  end
 
 def rubyTaken()
	
	puts "You place the giant ruby into your backpack."
	puts "\nCommands:"
	puts "leave"
	
	while true
	$game.prompt; nextMove = gets.chomp
	
	$winCondition = true
	
	if nextMove == "leave"
		$stoneRoom.stoneRoomDescription()
	else 
		puts $notAnOption
	end
	end
 end
end