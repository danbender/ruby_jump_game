require "gosu"

class RubyJumpGame < Gosu::Window
	def initialize width=800, height=600, fullscreen=false
		super
		self.caption = "A Ruby Jump Game"

		@image = Gosu
	end

	def button_down id
		close if id == Gosu::KbEscape
	end

	def update
	end

	def draw
	end
end

RubyJumpGame.new.show