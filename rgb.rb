#write a program that returns the most dominant color (red, green, or blue)
#input = color, output dominant color
require 'pry'
class RGB
  attr_reader :red,
              :green,
              :blue
  def initialize(hex_color)
    @red = hex_color.slice(0..1).to_i
    @green = hex_color.slice(2..3).to_i
    @blue = hex_color.slice(4..5).to_i
    @hex_color = hex_color
    @dominant_color = nil
  end

  def find_dominant_color
    if @red > @green && @red > @blue
      @dominant_color = 'red'
    elsif @green > @red && @green > @blue
      @dominant_color = 'green'
    elsif @blue > @red && @blue > @green
      @dominant_color = 'blue'
    else
      puts "There are two or more colors that tie"
    end
    return @dominant_color
  end
end

color = RGB.new('4286f4')
color.find_dominant_color
binding.pry
