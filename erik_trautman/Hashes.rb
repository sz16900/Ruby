# Make a new hash using several methods:
my_hash = Hash.new
my_hash = {}        # easier way

favorite_colors = { 
    "eyes" => "blue", 
    "hair" => "blonde"
}
puts favorite_colors["eyes"]

# Changing data:
favorite_colors["eyes"] = "green"
favorite_colors["skin"] = "suburned"
puts favorite_colors

# Symbols and Hashes
favorite_smells = { :flower => "daffodile", :cooking => "bacon" }

# Delete from a hash by just setting the value to nil or by calling the #delete method:
favorite_smells[:flower] = nil
favorite_smells.delete(:cooking)
puts favorite_smells

# If you want to know what All the Keys are (more common) or All the Values are (less common) in a hash, just use the aptly named #keys and #values methods to spit them out as an array:
puts favorite_colors.keys
puts favorite_colors.values

