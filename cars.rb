# Code for car class goes here
## 2. Car
# - Define a Car class.  It should have attributes like max_speed, color, seating_material, etc.
# - Define a few classes for different car makes/models
#     - For example define a Ferrari class with a high max_speed
#     - These classes should inherit from the Car class
# - Instantiate several different cars objects


require 'pry'

# Code for Superhero goes here

class Car
	attr_accessor :max_speed, :color, :seat_material, :wheels

	def initialize(max_speed, color, seat_material, wheels=4)
		@max_speed = max_speed
		@color = color
		@seat_material = seat_material
		@wheels = wheels
	end

	def drive
		puts "vroom vroom"
	end

	def lose_wheel
		puts "AHHH!!!"
		@wheels -= 1
	end

	def wheel_check
		if @wheels < 0
			puts "How is that possible?"
		elsif @wheels >= 0 && @wheels < 4
			puts "You can't drive."
		else
			puts "You can drive"
		end
	end

end



class Porsche < Car

	def initialize(color, seat_material)
		@max_speed = 'High'
		@color = color
		@seat_material = seat_material
		@wheels = 4
	end


end

my_car = Car.new('slow', 'silver', 'pleather', 3)

your_porsche = Porsche.new('red', 'leather')

p_o_s = Car.new('zero', 'rust', 'what seats?', 0)

binding.pry

