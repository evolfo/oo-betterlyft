require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

george = Driver.new("George")
paul = Driver.new("Paul")
sam = Driver.new("Sam")

yolanda = Passenger.new("Yolanda")
albert = Passenger.new("Albert")
jean_ralphio = Passenger.new("Jean Ralphio")

ride1 = Ride.new(sam, yolanda, 4.9)
ride2 = Ride.new(paul, albert, 1.7)
ride3 = Ride.new(george, jean_ralphio, 40.3)
ride4 = Ride.new(paul, jean_ralphio, 4.3)
ride5 = Ride.new(sam, jean_ralphio, 0.3)
ride6 = Ride.new(george, yolanda, 100.5)



binding.pry
