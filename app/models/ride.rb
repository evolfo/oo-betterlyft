class Ride
  attr_reader :passenger, :driver, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance.to_f

    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_miles = 0
    # count = self.all.count

    count = self.all.each do |ride|
        total_miles += ride.distance
    end.count

    total_miles / count
  end

end


#------------------------ DONE ------------------------------
# Ride#passenger
  # Returns the Passenger object for that ride
# Ride#driver
  # Returns the Driver object for that ride
# Ride#distance
  # Returns the distance of the ride
# Ride.average_distance
  # Returns the average distance across ALL rides
