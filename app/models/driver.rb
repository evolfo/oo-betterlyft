class Driver
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  def passenger_names
    rides.map { |ride| ride.passenger.name }.uniq
  end

  def total_distance
    total = 0
    rides.each { |ride| total += ride.distance }
    total
  end

  def self.all
    @@all
  end

  def self.mileage_cap(distance)
    all.select { |driver| driver.total_distance > distance }
  end

end
