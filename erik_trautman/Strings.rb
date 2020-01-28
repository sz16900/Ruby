# String Interpolation occurs when you want to plug something 
# else into a string, like a variable.
my_name = "Tiny Tim"
my_string = "My name is #{my_name}!"
puts my_string

# Escaping characters just means telling the output program to not treat them specially at all (like the pound symbol, which has special meaning before the curly braces)
now = "RIGHT NOW"
puts "interpolating #{now} but not \#{now}"

# There are some special characters that are actually denoted using the backslash and you'll want to know the key ones, which will probably pop up again and again:
# \n will output a new line
# \r is a newline too (carriage return)
# \t will output a tab

# Combining Strings without using interpolation can be done using "concatenation", or basically just adding them together:
my_name = "Billy Bob"
puts "hello" + " world" + ", say I, the great " + my_name + "!"

# To Access a Specific Character or Substring of a string, just treat it like an array! A string acts like a zero-indexed array that ends at -1, so use [0] to access the first letter, [-1] to access the last letter, and [n..m] to pluck a substring:
s = "hello"
puts s[0]

# Break a String into Pieces using #split, which creates an array of substrings that are broken up based on whatever character you passed in:
list = "eggs, milk, cheese and crackers"
puts list.split(", ")
puts list.split("")

# When you write your Ruby programs, you'll probably want to ask for User Input... which is easy with #gets, which then waits for the user to type something. You'll want to store whatever the user types into a variable and be sure to trim off the extra line break (from when the user hit the enter key) using #chomp:


# Other Helpful String Methods include:
    puts my_name.length #to get the length of the string
    puts my_name.downcase #to convert "ALL THIS" to "all this"
    puts my_name.upcase #to convert "all this" back to "ALL THIS"
    puts my_name.reverse #to convert "hello" to "olleh"

# There's a handy method for strings called #gsub(pattern, replace_with_this), which finds any occurrances of that pattern and replaces it with whatever you want:
puts "hello".gsub("l","r")

# Symbols are denoted with the colon before the name, e.g. :my_symbol instead of "my_string" A symbol is basically like a string without any depth... string lite, if you will.
puts "hello".object_id
puts "hello".object_id
puts :hello.object_id
puts :hello.object_id

# Other Helpful Methods

    #ljust will let you pad your string with extra spaces (or any other character you choose) up until a specified total amount of characters, so "hi".ljust(4) => "hi  " and "hi".ljust(6,"*") => "hi****". It can be handy for prettying up some of your command line outputs.
    #rjust does the same thing but pushes your string to the right, e.g. "hi".rjust(6) => "    hi"
    #center is the same idea but it centers your string: "hi".center(6,"!") => "!!hi!!"