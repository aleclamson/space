require "gosu"

class planet
	def initialize xpos, ypos, xvel, yvel, mass, image
		@xpos = xpos
		@ypos = ypos
		@xvel = xvel
		@yvel = yvel
		@mass = mass
		@image = Gosu::Image.new
	end