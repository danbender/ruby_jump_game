require "gosu"

class RubyJumpGame < Gosu::Window
	def initialize width=800, height=600, fullscreen=false
		super
		self.caption = "A Ruby Jump Game"

		@image = Gosu::Image.from_text self, 
					   "Hello, this is me.",
					   Gosu.default_font_name,
					   100
	end

	def button_down id
		close if id == Gosu::KbEscape
	end

	def update
		@x = self.width/2 - @image.width/2
		@y = self.height/2 - @image.height/2
	end

	def draw
		@image.draw @x, @y, 0
	end
end

RubyJumpGame.new.show