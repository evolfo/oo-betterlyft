class Driver
	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name

		@@all << self
	end

	def self.all
		@@all
	end

	def rides
		Ride.all.select do |ride|
			ride.driver == self
		end
	end

	def passenger_names
		rides.map do |ride|
			ride.passenger.name
		end
	end

	def total_distance
		distance = 0
		rides.each do |ride|
			distance += ride.distance
		end
		distance
	end

	def self.mileage_cap(distance)
		self.all.select do |driver|
			driver.total_distance > distance
		end
	end
end