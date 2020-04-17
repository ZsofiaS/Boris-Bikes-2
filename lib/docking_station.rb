require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      fail "No bikes available"
    else
      @bikes.pop
    end
  end

  def dock_bike(bike)
    @bikes << bike
  end
end
