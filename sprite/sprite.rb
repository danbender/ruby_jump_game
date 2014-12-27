require 'gosu'

class Sprite < Gosu::Window
	def initialize window
		@window = window
		@image = Gosu::Image.new @window, "assets/player.png"
		# center img
		@x = @window.width/2 - @image.width/2
		@y = @window.height/2 - @image.height/2
	end

	def update
		@x += -5 if @window.button_down?  Gosu::KbLeft
	end

	def draw
		@image.draw @x, @y, 1
	end
end



class SpriteGame < Gosu::Window
	def initialize width = 800, height = 600, fullscreen = false
		super
		self.caption = "Sprite Demonstration"
		@sprite = Sprite.new self
	end

	def button_down id
		close if id == Gosu::KbEscape
	end

	def update
		@sprite.update
	end

	def draw
		@sprite.draw
	end

end

SpriteGame.new.show