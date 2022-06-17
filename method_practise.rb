# Concatenate all the names of everyone in your family

def family_names(name1, name2, name3)
    return "These are the people in my family: #{name1}, #{name2} and #{name3}"
end

puts family_names("Rosy", "Margaret", "David")


# Calculate the number of seconds in 12 weeks

def number_of_seconds(weeks)
    days = weeks * 7
    hours = days * 24
    minutes = hours * 60
    seconds = minutes * 60
    return seconds
end

num_weeks = 12
total_seconds = number_of_seconds(num_weeks)
puts "There are #{total_seconds} in #{num_weeks} weeks"