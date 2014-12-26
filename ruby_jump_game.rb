require "gosu"

class RubyJumpGame < Gosu::Window
    def initialize width=800, height=600, fullscreen=false
        super
        self.caption = "A Ruby Jump Game"
        @song  = Gosu::Song.new self, "music.mp3"
        @song.play
        @sound = Gosu::Sample.new self, "hop.mp3" 
        @image = Gosu::Image.from_text self, 
                       "Hello, this is me.",
                       Gosu.default_font_name,
                       100

    end

    def button_down id
        close if id == Gosu::KbEscape
        @sample.play if id == Gosu::KbX
    end

    def update
        @x = self.width/2 - @image.width/2 + Math.sin(Time.now.to_f) * 150
        @y = self.height/2 - @image.height/2 + Math.tan(Time.now.to_f) * 100
    end

    def draw
        @image.draw @x, @y, 0
    end
end

RubyJumpGame.new.show