class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def add_ride(driver, distance)
    Ride.new(driver, self, distance)
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

#inject & reduce are the same thing

  def total_distance
    rides.reduce(0){|sum,ride| sum + ride.distance }

    ##ANOTHER WAY TO DO THE SAME THING
    # maped_distance = rides.map do |ride|
    #   ride.distance
    # end
    #
    # new_stuff = maped_distance.reduce(10, :+)
  end

  def self.all
    @@all
  end

#NEW did not work on together
  def self.premium_members
    #get list of all rides of users who have a total distance over 100
    premium_list = Ride.all.select do |ride|
      ride.passenger.total_distance > 100
    end

    # change premium list from instances of rides to instances of passenger
    # Then remove duplicates
    premium_list.map { |ride| ride.passenger  }.uniq
  end
end
