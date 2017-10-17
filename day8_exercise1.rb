# this class is for point
class Point
  attr_accessor :x
  attr_accessor :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def quadrant
    if x >= 0 && y >= 0
      1
    elsif x < 0 && y >= 0
      2
    elsif x < 0 && y < 0
      3
    else
      4
    end
  end

  def print
    "(#{@x},#{@y})"
  end

  def move_left(param)
    @x -= param
  end

  def move_right(param)
    @x += param
  end

  def move_up(param)
    @y += param
  end

  def move_down(param)
    @y -= param
  end
end

point1 = Point.new(1, 1)
p point1.print
p point1.quadrant

point1.move_left(10)
p point1.print

point1.move_down(10)
p point1.print

point1.move_right(10)
p point1.print

point1.move_up(10)
p point1.print

# this class is for line
class Line
  attr_accessor :start
  attr_accessor :end
  def initialize(pstart, pend)
    @start = pstart
    @end = pend
  end

  def length
    Math.sqrt((@start.x - @end.x)**2 + (@start.y - @end.y)**2)
  end

  def print
    "[(#{@start.x}, #{@start.y}), (#{@end.x}, #{@end.y})]"
  end

  def gradient
    (@end.y - @start.y).to_f / (@end.x - @start.x).to_f
  end

  def move_left(param)
    @start.move_left(param)
    @end.move_left(param)
  end

  def move_right(param)
    @start.move_right(param)
    @end.move_right(param)
  end

  def move_up(param)
    @start.move_up(param)
    @end.move_up(param)
  end

  def move_down(param)
    @start.move_down(param)
    @end.move_down(param)
  end
end

point1 = Point.new(1, 1)
point2 = Point.new(2, -10)
line1 = Line.new(point1, point2)

p line1.print

line1.move_up(10)
p line1.print

line1.move_down(10)
p line1.print

line1.move_left(10)
p line1.print

line1.move_right(10)
p line1.print
