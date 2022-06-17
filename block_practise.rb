my_array = [1, 2, 3, 4, 5, 5]

# select
puts my_array.select {|n| n > 3}

selecting = my_array.select do |n|
    n > 3
end

puts selecting

# all? if all elements in the array if every obj is true
# otherwise if any element in the array is false, it prints false
puts my_array.all? {|n| n < 6}

all_numbers = my_array.all? do |n|
    n < 6
end

puts all_numbers

# any? prints true if the statement is true for any of the objects 
# in an array
puts my_array.any? {|n| n < 4}

any_numbers = my_array.any? do |n|
    n < 4
end 

puts any_numbers

# filter - prints all the elements that the statement is true for
puts my_array.filter {|n| n < 4}

filtering = my_array.filter do |n|
        n < 3
    end

puts filtering

# reject - prints all the elements that aren't rejected by the block
puts my_array.reject {|n| n < 4}

rejecting = my_array.reject do |n|
    n < 4
end 

puts rejecting

puts "BREAK BREAK"

# Creating a method that takes a block

def smallest_number(an_array)
    smallest = an_array.min
    #yield allows us to parse the output to a block
    yield smallest
end

puts smallest_number(my_array) {|n| n < 4}
puts smallest_number(my_array) {|n| n.odd?}


# USING A HASH

puts "HASH PRACTISE"

stationary_audit = {"pen" => 12, "pencil" => 15, "notebook" => 4, "stapler" => 2}

# select
puts stationary_audit.select {|key, value| key.include?("p")}

# all?
puts stationary_audit.all? { |key, value| value < 20}

# any?
stationary_audit.any? { |key, value| puts key["notebook"]}

# filter
stationary_audit.filter { |key, value| puts key if value < 14 }

# reject
stationary_audit.reject do |key, value| 
    if value < 5
        puts "There are less than 5 of these #{key}s "
    end 
end

# map
puts stationary_audit.map { |key, value| "#{key} + 1 = #{(value = value + 1).to_s}" }

# each
stationary_audit.each { |key, value| puts "#{key} - 1 = #{(value = value - 1).to_s}"}