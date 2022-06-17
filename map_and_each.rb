# each iterates over the array, but does not change the array
[1, 2, 3, 4, 5].each { |n| puts n * 2}

puts "BREAK"

# map returns a new array, but doesn't alter the original
puts [4, 5, 6, 7].map { |n| n * 2}

# note the difference in where the puts is for each method
