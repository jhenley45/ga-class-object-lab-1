require 'pry'

# Code for Superhero goes here

class Human
	attr_accessor :name, :age, :gender, :height

	def initialize(name, age, gender, height=72)
		@name = name
		@age = age
		@gender = gender
		@height = height
	end

	def grow
		puts "Gettin' biggah!"
		@height += 2
	end

	def walk
		puts "Moving slowly..."
	end

	def run
		puts "Moving faster now..."
	end

end



class Superhero < Human

	def fly
		puts "Everything looks so small..."
	end

	def shoots_web
		puts "Take that!"
	end


end

jack = Human.new('Jack', 23, 'Male', 70)

spidey = Superhero.new('Spidey', 40, 'Insect')
binding.pry

