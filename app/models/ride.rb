class Ride
  attr_reader :passenger, :driver, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance

    @@all << self
  end

  def self.all
    @@all
  end

end
