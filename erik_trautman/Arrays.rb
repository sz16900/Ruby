# Creating an Array can happen in many different ways. You can either create it empty, specify how many spaces it should have (still empty), or even fill it with default values:
a = Array.new  
b = []
c = Array[] 
d = %w{ I am not a crook } # notice no quotes on string
empty_a = Array.new(5)
full_a = Array.new(3, "hi")

# And remember, you can store pretty much anything in there, even other arrays:
full_b = [1, 4, 8, "hello", a]

# Accessing Items is super easy, just start from 0 like you did with strings. Just like with strings, you can start from the end of the array using negative numbers from -1 and you can even grab ranges of values at a time:
arr = [1, 3, 5, 7, 2]
arr[0]
arr[-1]
arr[1..3]
arr.slice(1..3)
arr[1..200000] # no error, it cuts off at the end 

# Modifying Items is as simple as accessing them is... just set them equal to a value:
arr[0] = 42
arr[0..2] = 99

# Adding Arrays is also done similarly to strings, by just mashing one onto the end of the other:
first = [1,2,300]
second = [7,8,9]
combined = first + second

# Subtracting Arrays is a bit different... think of the minus sign as saying "take away any and all values that are duplicated in the right array from the left array". The only values remaining will be those from the left that were not included in the right side at all:
puts [1,2,3] - [2,3,4]
puts [2,2,2,2,2,3,4] - [2, 5, 7]

# If you want to find values in Both arrays, check their union using the ampersand &:
puts [1,2,3]&[2,4,5]

# What if you only want to add or subtract one single value?
my_arr = [1,2,3]
my_arr.push(747)
my_arr.pop

# What if you want to take the item off the FRONT of the array? This is less common. For that, use the similar #shift and #unshift methods:

my_arr = [1,2,3]
my_arr.shift
my_arr.unshift(999)

# Shovel Operator, aka <<. This method is almost identical to push, since it just jams whatever's to its right into the array:
my_arr = [1,2,3]
my_arr << 3
my_arr << [4,5]
print my_arr

# Deleting Items from an array should be done carefully because, if you're deleting items inside a loop or something like that, it will change the index of the other items and you'll need to anticipate this or live to regret it. Delete an item at a specific index using #delete_at, which is sort of like poping but from anywhere you want:
my_arr = [1,2,3]
my_arr.delete_at(1)

# If you want to clear out the whole array, you can use #clear or, more easily, just set it equal to []:
my_arr = [1,3,5]
my_arr.clear
my_arr = []      

# See if an array includes an item AT ALL by using #include?, which, as you should see from the ? at the end, returns true or false:
my_arr.include?(3)
my_arr.include?(132)

# To find WHERE a specific item lives in the array, use #index but note that it only returns the FIRST instance of this (and then gives up. Lazy method.):
my_arr.index(3)
[1,2,3,4,5,6,7,3,3,3,3,3].index(3)
my_arr.index(132) # nil

# A few useful and commonly used methods:

    #max to find the biggest value of an array
    #min to find the smallest value of an array
    #uniq to remove all duplicates from your array
    #size to find out how big the array is
    #shuffle will mess up your whole array by putting it in random order
    #sort will clean it up again for you by putting your array in order. Though #sort is pretty self-explanatory in the simple case, it can actually take parameters to let you decide if you want to sort things using a different (or reverse) methodology.
    #sample picks out a totally random value from the array... good for gambling games!
    #first gives you the first item (but doesn't remove it, so it's same as [0]) but can be more descriptive of your code's intent.
    #last is same as [-1]

# Strings are a lot like arrays... so much so that we can even Convert an Array into a String! Just use #join and tell it what, if anything, you want in between each element (the "separator"):
["he", "llo"].join


# Want to know a cool way to make an array? Create it from a Range and just Convert it to an Array:
print my_awesome_array = (1..6).to_a

# Advanced stuff (you don't need to know this right now):
Array.new(5){|item_index| item_index ** 2}