class Ride
	attr_reader :driver, :passenger, :distance

	@@all = []

	def initialize(driver, passenger, distance)
		@driver, @passenger, @distance = driver, passenger, distance

		@@all << self
	end

	def self.all
		@@all
	end

	def self.average_distance
		avg_distance = 0
		self.all.each do |ride|
			avg_distance += ride.distance
		end
		avg_distance / self.all.length
	end
end