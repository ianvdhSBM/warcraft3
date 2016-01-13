require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege = SiegeEngine.new
  end

  it "has and knows its HP" do
    expect(@siege.health_points).to eq(400)
  end

  it "has and knows its AP" do
    expect(@siege.attack_power).to eq(50)
  end

  describe "#attack!" do

    it "should deal 50 AP damage to SiegeEngine unit" do
      enemy = SiegeEngine.new
      expect(enemy).to receive(:damage).with(50)
      @siege.attack!(enemy)
    end

    # it "SiegeEngine will return nil when attacking units other than Barracks or other SiegeEngines" do
    #   enemy = Footman.new
    #   expect(enemy).to receive(:damage).with(nil)
    #   @siege.attack!(enemy)
    # end

    it "should deal double AP damage to Barracks" do
      enemy = Barracks.new
      expect(enemy).to receive(:damage).with(100)
      @siege.attack!(enemy)
    end

  end

  # describe "#attack!" do
  #   it "should do deal half AP damage to the Barracks unit" do
  #     enemy = Barracks.new
  #     expect(enemy).to receive(:damage).with(5)
  #     @footman.attack!(enemy)
  #   end
  # end

end

describe Barracks do
  
  before :each do
      @barracks = Barracks.new
  end  

  describe "#can_train_siege_engine?" do
    it "return true if there are enough recources to make a SiegeEngine" do
      expect(@barracks.can_train_siege_engine?).to be_truthy
    end
  end

  describe "#train_siege_engine" do

    it "does not train a siege engine if there aren't enough resources" do
      expect(@barracks).to receive(:can_train_siege_engine?).and_return(false)
      expect(@barracks.train_siege_engine).to be_nil
    end

    it "trains a siege engine if there are enough resources" do
      expect(@barracks).to receive(:can_train_siege_engine?).and_return(true)
      expect(@barracks.train_siege_engine).to be_a(SiegeEngine)
    end
  end

  describe "#damage" do

    it "SiegeEngine should decrease Barracks HP by 2x attack_power specified" do
      @barracks.damage(100)
      expect(@barracks.health_points).to eq(400)
    end
  end
end









