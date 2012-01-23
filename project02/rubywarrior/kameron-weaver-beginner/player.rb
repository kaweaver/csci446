class Player
  def play_turn(warrior)
	lastHealth = 0
    # add your code here
	if(warrior.feel.empty?)
		if(warrior.health < 14)
			if(warrior.health >= @lastHealth)
				warrior.rest!
			else
				warrior.walk!
			end
		else
			warrior.walk!
		end
	else
		warrior.attack!
	end
	@lastHealth = warrior.health
  end
end
