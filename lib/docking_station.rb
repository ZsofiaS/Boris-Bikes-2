require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock_bike(bike)
    if self.full?
      fail "Docking station is full"
    else
      @bikes << bike
    end
  end

  def release_bike
    if self.empty?
      fail "No bikes available"
    else
      @bikes.pop
    end
  end

  private

  def full?
    @bikes.count >= 20 ? true : false
  end

  def empty?
    @bikes.count == 0 ? true : false
  end

end
