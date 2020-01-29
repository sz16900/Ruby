puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0) # creates an empty hash
words.each { |word| frequencies[word] += 1 } # loops words and create key value pairs, if it exists already, add counter
frequencies = frequencies.sort_by {|a, b| b } # sort by higher freaquency
frequencies.reverse! # reverse so that it is in descending order
frequencies.each { |word, frequency| puts word + " " + frequency.to_s } # print to the console