class Player
  def play_turn(warrior)
	@last_known_health = warrior.health unless @last_known_health

    	took_damage = @last_known_health > warrior.health

    # add your code here
	if(warrior.feel.empty?)
		if(took_damage)
			if(warrior.health < 10)
				warrior.walk! :backward
			else
				warrior.walk!
			end
		else
			if(warrior.health < 15)
				warrior.rest!
			else
				warrior.walk!
			end
		end
	else
		if(warrior.feel.captive?)
	                warrior.rescue!
                else
			warrior.attack!
		end
	end
	@last_known_health = warrior.health
  end
end
