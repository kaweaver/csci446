class Player
  def play_turn(warrior)
    # add your code here
	if(warrior.feel.empty?)
		if(warrior.health < 10)
			warrior.rest!
		else
			warrior.walk!
		end
	else
		warrior.attack!
	end
  end
end
