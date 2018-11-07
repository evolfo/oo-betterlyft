class Passenger
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # grab all rides that this passenger has ridden on
  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  def total_distance
    #[ride1, ride2, ride3].distance
    total = 0
    rides.each { |ride| total += ride.distance }
    total
    #code
  end

  # maps through the rides that this passenger
  # has been on and get the drivers
  def drivers
    rides.map { |ride| ride.driver }
  end

  #class methods
  def self.all
    @@all
  end

  def self.premium_members
    all.select { |passenger| passenger.total_distance > 100 }
    #code
  end
end



# Passenger#rides
  # Returns an array of Ride instances that this person has been on
# Passenger#drivers
  # Returns an array of Driver instances that this person has rode with
# Passenger#total_distance
  # Returns the floating number that represents the total distance the passenger has travelled using the service
# Passenger.all
  # Returns an array of all Passengers
# Passenger.premium_members
  # Returns an array of all Passengers who have travelled over 100 miles in total with the service



  # A Passenger should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed.
  # Passenger#name
    # Returns the name of the passenger
