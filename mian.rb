require 'Gosu'
require_relative "planets"
class SimWindow < Gosu::Window

G = 6.67408e-11

	def initialize sim
		super 640, 640
		self.caption = "Planet Simulation"

		@data =File.read("#{sim}")
		@lines = @data.split("\n")
		@planets_data = @lines[2..6].map {|planet| planet.split(" ")}
		
		@background_image = Gosu::Image.new("images/space.jpg")
		
		@planets = []
		@planets_data.each { |planet| @planets.push(Planet.new(planet, @lines[1].to_f*2, 640)) }
	end

	def update
		
	end

	def draw
		@background_image.draw(0,0,0)
		@planets.each { |planet| planet.draw }
	end

	def button_down(id)
		close if id == Gosu::KbEscape
	end
end

window = SimWindow.new("simulations/planets.txt")
window.show