class Ride
  attr_reader :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  ## class methods
  def self.all
    @@all
  end

  def self.average_distance
    @@all.map { |ride| ride.distance }.reduce(:+) / @@all.count
  end
end
