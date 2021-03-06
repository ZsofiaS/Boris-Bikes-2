require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock_bike(bike)
    fail "Docking station is full" if full?
    @bikes << bike
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end
 
  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
