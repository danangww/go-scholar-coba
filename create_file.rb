filename = ARGV.first

# output_stream = open(filename, "w")
# output_stream.write("This is just a test text.")

# output_stream.close

# open(filename, "w") { |file| file.write("This is test file using block lul.") }
open(filename, "w") { |file| 
  file.write("Actually it's just the same.\n")
  file.write("It's as if we're just writing string with proper newlines etc.\n")
  file.write("Only, instead of printing it to a screen, we write it to a file.\n") 
}