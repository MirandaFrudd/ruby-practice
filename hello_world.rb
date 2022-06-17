#IF STATEMENTS:
greeting = "Hello"
name = "Alexa"
#puts ("#{greeting} Miranda")

# if name.length > 5
#     puts("#{greeting} #{name} - that's a long name")
# elsif name.length < 5
#     puts("#{greeting} #{name} - what a short name")
# else
#     puts("#{greeting} #{name} your name is 5 letters long")
# end

# METHODS:
def my_name(a_name)
    return "My name is #{a_name}"
end
puts my_name("Miranda")

def simple_math(num1, num2)
    multiply = num1 * num2
    divide = num1 / num2.to_f
    return "Multiply: #{multiply}, Divide = #{divide}"
end
puts simple_math(10, 4)
