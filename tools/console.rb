require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

irving = Passenger.new("Irving")
randy = Passenger.new("Randy")
travis = Passenger.new("Travis")

ken = Driver.new("Ken")
jordan = Driver.new("Jordan")


r1 = randy.add_ride(ken, 3.6)
r2 = irving.add_ride(jordan, 22.2)
r3 = irving.add_ride(ken, 2.4)
r4 = randy.add_ride(ken, 10.6)
r5 = randy.add_ride(jordan, 120)
r6 = travis.add_ride(ken, 120)
r7 = travis.add_ride(jordan, 200)




# Put your variables here~!

binding.pry
