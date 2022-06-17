class SimpleMath
    def initialize(num1, num2)
        # Here I am taking 2 numbers as an argument
		# and assigning them to an instance variable
		# so they are accesible throughout the Class.
        @num1 = num1
        @num2 = num2
    end

    def addition
        return @num1 + @num2
    end

    def multiply
        return @num1 * @num2
    end

    def math_message
        return "The numbers we were using are #{@num1.to_s} and #{@num2.to_s}"
    end
end

class Person
    def initialize(name, birthday, fave_lang)
        @name = name
        @birthday = birthday
        @fave_lang = fave_lang
    end

    def name
        puts "My name is #{@name}"
    end
end


my_math = SimpleMath.new(632, 106)

puts my_math.addition
puts my_math.multiply
puts my_math.math_message

my_person = Person.new("Miranda", "5th Feb", "Ruby!")

puts my_person.name
