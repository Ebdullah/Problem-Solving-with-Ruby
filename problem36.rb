# Problem 36: Defining and Using a Module Define a module MathOperations with methods
# add, subtract, multiply, and divide. Then, create a class Calculator that includes the
# MathOperations module and uses its methods.

module MathOperations
    def add(*args)
        sum = 0
        args.each do |num|
            sum = sum + num
        end
        sum
    end

    def subtract(num1,num2)
        result = num1 - num2
        if result > 0
            return "+#{result}"
        elsif result < 0
            return "#{result}"
        else
            return "0"
        end
    end

    def multiply(*args)
        result = 1
        args.each do |num|
            result = result * num
        end
        result
    end

    def divide(num1,num2)
        if num2 == 0
            raise ArgumentError, "denominator cannot be 0"
        else
            num1 / num2
        end
    end
end

class Calculator
    include MathOperations

end

puts Calculator.new.add(1,2,3)
puts Calculator.new.subtract(1,3)
puts Calculator.new.multiply(3,2,8)

begin
    puts Calculator.new.divide(10,0)
rescue ArgumentError => e
    puts "#{e.message}"
end