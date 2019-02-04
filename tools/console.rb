require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p1 = Passenger.new('Greg')
p2 = Passenger.new('Dallas')
p3 = Passenger.new('James')

d1 = Driver.new('Andy')
d2 = Driver.new('JanCarlos')
d3 = Driver.new('Manuela')

r1 = Ride.new(d1, p1, 5)
r2 = Ride.new(d3, p2, 90)
r3 = Ride.new(d1, p3, 300)
r4 = Ride.new(d1, p2, 50)


binding.pry
