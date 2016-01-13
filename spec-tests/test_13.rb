require_relative 'spec_helper'

describe Unit do
  
  # before :each do
  #   @unit = Unit.new(0,40)
  # end

  describe "#can_attack?" do
    unit = Unit.new(0, 40)
    enemy = Unit.new(40, 40)
    it "Attacking unit is dead and should return false" do
      expect(unit.can_attack?(enemy)).to be false
    end
  end
  
  describe "#can_attack?" do
    unit = Unit.new(40, 40)
    enemy = Unit.new(0, 40)
    it "Enemy unit is dead and should return false" do
      expect(unit.can_attack?(enemy)).to be false
    end
  end

  describe "#can_attack?" do
    unit = Unit.new(40, 40)
    enemy = Unit.new(40, 40)
    it "Both units is dead and should return true" do
      expect(unit.can_attack?(enemy)).to be true
    end
  end

end