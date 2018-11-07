require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

raquel = Passenger.new('Raquel')
la = Passenger.new('La')
omar = Passenger.new('Omar')

skyler = Driver.new('skyler')
rob = Driver.new('rob')
terrance = Driver.new('terrance')

ride1 = Ride.new(skyler, raquel, 3.2)
ride2 = Ride.new(rob, la, 10.2)
ride3 = Ride.new(terrance, omar, 400.2)
ride4 = Ride.new(skyler, omar, 405.2)

ride5 = Ride.new(rob, raquel, 1000)
# ride2 = Ride.new(nil, la, 1.5)


# Put your variables here~!

binding.pry
