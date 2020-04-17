require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock_bike(bike)
    if @bikes.count >= 20
      fail "Docking station is full"
    else
      @bikes << bike
    end
  end

  def release_bike
    if @bikes.empty?
      fail "No bikes available"
    else
      @bikes.pop
    end
  end

end
