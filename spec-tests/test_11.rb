require_relative 'spec_helper'


# Test for Barracks being attacked and how much damage it takes

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  it "starts off with 500 HP" do
    expect(@barracks.health_points).to eq(500)
  end

  describe "#damage" do
    it "takes half damage from footman attacks" do
      @barracks.damage(5)
      expect(@barracks.health_points).to eq(495)
    end
  end

end

describe Footman do 

  before :each do
    @footman = Footman.new
  end

  describe "#attack!" do
    it "should do deal half AP damage to the Barracks unit" do
      enemy = Barracks.new
      expect(enemy).to receive(:damage).with(5)
      @footman.attack!(enemy)
    end
  end
end