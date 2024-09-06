# Problem 5: Class Methods Create a class named MathOperations with a class method add
# that takes two arguments and returns their sum.

class MathOperations
    def self.add(a,b)
        a + b
    end
end

#calling a class method here
puts MathOperations.add(2,5) 