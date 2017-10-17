# class Person
#   def initialize(name)
#     @name = name
#   end
#   #getter
#   def name
#     @name
#   end
#   #setter
#   def name=(str)
#     @name = str
#   end
# end

# class Person
#   attr_reader :name #buat getter
#   attr_writer :name #buat setter

#   def initialize(name)
#     @name = name
#   end
# end
# $earth_circumference = 40000
# class Person
#   attr_accessor :name #buat setter dan getter
#   @@people_count = 0
#   def initialize(name)
#     @name = name
#     @@people_count += 1
#   end
#   def self.people_count #diaksesnya harus lewat class
#     @@people_count
#   end
#   def self.show_population
#     puts """
#       There are a total of #{@@people_count} people 
#       in this whole #{$earth_circumference} km of earth circumference
#       """
#   end
# end

# person1 = Person.new("Danang")
# person2 = Person.new("Wahyu")
# person3 = Person.new("Wicaksono")

# Person.show_population
# puts "we can access it from outsice of classes too : #{$earth_circumference}"

# $earth_circumference = 50000
# Person.show_population
# person1.name = "Woohooo"

# puts "The first person name is #{person1.name}"
# puts "The second person name is #{person2.name}"
# puts "The third person name is #{person3.name}"
# puts "Total person is #{Person.people_count}"

# class MyArray < Array

# end

# a = MyArray.new([1, 2, 3])
# a.map! { |i| i + 1 }
# puts a

# class Rectangle
#   def initialize(length, breadth)
#     @length = length
#     @breadth = breadth
#   end

#   def perimeter
#     2 * (@length + @breadth)
#   end
# end

# class Square < Rectangle #inherit from Rectangle class
#   def initialize(side)
#     @length = side
#     @breadth = side
#   end
# end

# rectangle = Rectangle.new(2, 3)
# square = Square.new(2)

# puts "Perimeter of rectangle = #{rectangle.perimeter}"
# puts "Perimeter of square = #{square.perimeter}"

# class Fixnum
#   def +(other)
#     42
#   end
# end

# # num = Fixnum.new
# puts 1 + 2

# class MyArray < Array
#   def map
#     puts "The .map method is overridden here"
#   end
# end

# a = Array.new([1, 2, 3])
# a.map{ |i| i + 2 }

# b = MyArray.new([1, 2, 3])
# b.map

# class Animal
#   def move
#     "I can move"
#   end
# end

# class Bird < Animal
#   def move
#     super + " by flying"
#   end
# end

# puts Animal.new.move
# puts Bird.new.move

# class Matrix < Array
#   def +(other)
#     res = []
#     self.each_with_index { |val, index| res << val + other[index] }
#     res
#   end
#   def -(other)
#     res = []
#     self.each_with_index { |val, index| res << val - other[index] }
#     res
#   end
#   def *(other)
#     res = []
#     self.each_with_index { |val, index| res << val * other[index] }
#     res
#   end
#   def /(other)
#     res = []
#     self.each_with_index { |val, index| res << val / other[index] }
#     res
#   end
# end

# mat1 = Matrix.new([1, 2])
# mat2 = [3, 4]

# p mat1 + mat2
# p mat1 - mat2
# p mat1 * mat2
# p mat1 / mat2


class Person
  attr_accessor :name #buat setter dan getter
  @@people_count = 0
  def initialize(name)
    @name = name
    @@people_count += 1
    @person_id = @@people_count
  end
  def self.people_count #diaksesnya harus lewat class
    @@people_count
  end
  def introduce
    puts "Hello, my name is #{@name} and my id is #{person_id}, and my special id is #{self.special_id}" #call method person_id
  end
private
  def person_id
    "##{@person_id}"
  end
protected
  def special_id
    "##{@person_id + 100}"
  end
end

person = Person.new("Danang")
person.introduce
# person.person_id #will get error
# person.special_id #will get error