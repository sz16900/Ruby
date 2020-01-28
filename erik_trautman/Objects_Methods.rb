=begin
Think of every "thing" in Ruby as a having more than meets the eye. 
The number 12 is more than just a number... It's an object and Ruby 
lets you do all kinds of interesting things to it like adding and 
multiplying and asking it questions like:
=end
puts 12.class

# Ruby gives all objects a bunch of neat methods. If you ever want 
# to know what an object's methods
puts (12345.methods.to_s + "/n")

# Some methods ask true/false questions, and are usually named with 
# a question mark at the end like:
puts 1.is_a?Integer
puts 1::class

# Bang Methods are finished with an exclamation point:
my_numbers = [1,5,3,2]
my_numbers.sort!

