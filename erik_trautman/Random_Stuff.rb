# #blank? and #empty? are similar -- both basically check if the object has nothing in it -- but #blank? will also ignore any whitespace characters. Note that #blank? is a method provided by Rails and is not available in Ruby.

# We've seen lots of #puts so far but you've probably also run across p What's the Difference? p will give you some more information because it runs the #inspect method on the object while #puts runs the #to_s method. #inspect is meant to be informative where #puts is "pretty". 

# = is an Assignment Operator but there are a few others that are interesting and common shorthands as well:
    # a += b is the same as a = a + b
    # a -= b is the same as a = a - b
    # a *= b is the same as a = a * b
    # a /= b is the same as a = a / b
    # a %= b is the same as a = a % b
    # a **= b is the same as a = a ** b

# Parallel Assignment is when you assign the values of more than one variable at a time (though it works for arrays as well!):
a, b = 1, "hi"
my_array = [1,2,3,4]
my_array[1], my_array[3] = 100, 200

# It's also a great way to Swap Two Variables:
a = 10
b = 20
a,b = b,a