# module Circle
#   PI = 3.1415926543
#   def Circle.area(radius)
#     PI * radius ** 2
#   end
#   def Circle.circumference(radius)
#     2 * PI * radius
#   end
# end

# puts Circle::PI
# puts Circle::area(7)
# puts Circle::circumference(7)

# #or
# puts Circle.area(7)
# puts Circle.circumference(7)

# class Angle
#   include Math
#   attr_accessor :radians

#   def initialize(radians)
#     @radians = radians
#   end

#   def cosine
#     cos(@radians)
#   end
# end

# acute = Angle.new(1)
# p acute.cosine

# module Action
#   def jump
#     @distance = rand(4) + 2
#     puts "I jumped forward #{@distance} feet!"
#   end
#   def run
#     puts "I jumped forward #{@distance} feet!"
#   end
# end

# class Rabbit
#   include Action
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# class Cricket
#   include Action
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

# peter = Rabbit.new("Peter")
# jiminy = Cricket.new("Jiminy")

# peter.run
# jiminy.jump

