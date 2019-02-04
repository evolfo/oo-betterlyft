class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.premium_members
    # returns an array of all rides that premium members have been on
    array_of_rides = Ride.all.select do |ride|
      ride.passenger.total_distance > 100
    end
      # returns an array of just premium passengers nod duplicated
    array_of_rides.map {|ride| ride.passenger}.uniq
  end

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    rides.map do |ride|
      ride.driver
    end
  end

  def total_distance
    nums = rides.map {|ride| ride.distance }

    nums.reduce do |acc, num|
      acc + num
    end
  end

end





# Passenger.premium_members
  # Returns an array of all Passengers who have travelled over 100 miles in total with the service


# --------------------DONE---------------------------
  # Passenger#name
  # Returns the name of the passenger
  # Passenger.all
  # Returns an array of all Passengers
  # Passenger#rides
  # Returns an array of Ride instances that this person has been on
  # Passenger#drivers
  # Returns an array of Driver instances that this person has rode with
  # Passenger#total_distance
  # Returns the floating number that represents the total distance the passenger has travelled using the service
