require 'pry'
require_relative 'unit'

class SiegeEngine < Unit
  def initialize
    @health_points = 400
    @attack_power = 50
  end 

  def attack!(enemy)
    if can_attack?(enemy)
      if enemy.class.to_s == "Barracks"
        double_power = attack_power.to_i * 2
        enemy.damage(double_power)
      elsif enemy.class.to_s == "SiegeEngine"
        enemy.damage(attack_power)
      else
        nil
      end
    end
  end


end

