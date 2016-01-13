class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    if can_attack?(enemy)
      enemy.damage(attack_power)
    end
  end

  def damage(dmg)
    @health_points -= dmg
  end

  def dead?
    @health_points <= 0
  end

  def can_attack?(enemy)
    !dead? && !enemy.dead?    
  end

end