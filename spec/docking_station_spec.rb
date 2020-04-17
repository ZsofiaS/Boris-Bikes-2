require 'docking_station'

describe DockingStation do
  it 'release bike from docking station' do
    expect(subject).to respond_to(:release_bike)
  end

  describe '#release_bike' do
    it 'Get a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq (bike)
    end
  end

  it 'Return bike to docking station' do
    expect(subject).to respond_to(:dock_bike)
  end

  it "attr_reader" do
    expect(subject).to respond_to(:bikes)
  end
  #it { is_expected.to respond_to :bikes }
  describe "no bikes in docking station" do

    it "raises" do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end

  end

  describe "docking station is full" do

    it "raises error" do
      20.times { subject.dock_bike(Bike.new) }
      expect { subject.dock_bike Bike.new }.to raise_error("Docking station is full")
    end

  end

end
