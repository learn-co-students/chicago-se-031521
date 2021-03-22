require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

# passengers
sonic = Passenger.new("Sonic")
mario = Passenger.new("Mario")

# drivers
tails = Driver.new("Tails")
luigi = Driver.new("Luigi")

# rides
ride1 = Ride.new(sonic, tails, 20.2)
ride2 = Ride.new(mario, luigi, 50.8)
ride3 = Ride.new(sonic, luigi, 83.2)
ride4 = Ride.new(mario, tails, 5.9)

binding.pry
