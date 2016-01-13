require_relative 'spec_helper'

describe Unit do
  
  describe "#dead?" do

    before :each do
      @unit = Unit.new(0, 5)
    end

    it "if unit's HP is equal to or less than 0, unit is dead" do
      expect(@unit.dead?).to be true
    end

  end

end