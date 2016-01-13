# http://classic.battle.net/war3/human/units/footman.shtml
 
require_relative 'unit'

class Footman < Unit

  # inherited from Unit class
  # attr_reader :health_points, :attack_power

  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy)
    if can_attack?(enemy)
      if enemy.class.to_s == "Barracks"
        half_power = (attack_power.to_i / 2.0).ceil
        enemy.damage(half_power)
      else
        enemy.damage(attack_power)
      end
    end
  end


  # inherited from Unit class
  # def damage(dmg)
  #   @health_points -= dmg
  # end

end
