
class Vehicle
	attr_accessor :odometer, :gas_used

	def accelerate
	  puts "Floor it!"
	end

	def sound_horn
	  puts "Beep! Beep!"
	end

	def steer
	  puts "Turn front 2 wheels"
	end

	def mileage
	  return @odometer / @gas_used
	end

end

class Car < Vehicle
end

class Truck < Vehicle
	attr_accessor :cargo

	def load_bed(contents)
		puts "Securing #{contents} in the truck bed."
		@cargo = contents
	end
end

class Motorcyle < Vehicle
	def steer
		puts "Turn front whell"
	end
end

truck = Truck.new
truck.accelerate
truck.steer

car = Car.new
car.odometer = 11432
car.gas_used = 366

puts "Lifetime MPG:"
puts car.mileage

truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}."
truck.cargo = 25

puts truck.cargo()

truck.odometer = 11432
truck.gas_used = 366
puts "Average MPG"
puts truck.mileage

motor = Motorcyle.new
motor.steer


