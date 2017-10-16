# def accept_block
#   puts "We're in the method!"
#   puts "Yielding to the block"
#   yield
#   puts "We're back in the method!"
# end

# accept_block{ puts ">>> We're in the block" }

# def yield_name(name)
#   puts "In the method! Let's yield"
#   yield("Kim")
#   puts "In between the yields"
#   yield(name)
#   puts "Block complete! Back in the method"
# end

# yield_name("Iqbal"){ |n| puts "My name is #{n}"}

# multiples_by_3 = Proc.new do |n|
#   n % 3 == 0
# end

# print (1..100).to_a.select(&multiples_by_3)
# puts
# print (1..100).to_a.select{ |n| n % 3 == 0 }
# puts
# puts multiples_by_3.class

# cube = Proc.new { |n| n ** 3 }

# print [1, 2, 3].collect!(&cube)
# puts

# floats = [1.2, 3.45, 0.91, 7.727, 11.42]
# round_down = Proc.new { |n| n.floor }
# print floats.collect!(&round_down)
# puts

# a = lambda { puts "Hello!" }
# puts a.class

# strings = ["leonardo", "donatello"]
# symbolize = lambda { |str| str.to_sym }

# symbols = strings.collect(&symbolize)
# print symbolize.call("")
# print cube.call()

def batman_v_superman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Superman will win!"
end

def batman_v_superman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Superman will win!"
end

puts batman_v_superman_lambda