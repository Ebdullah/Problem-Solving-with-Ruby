# Problem 24: Factorial Calculation Write a method factorial that takes an integer n and
# returns its factorial using a loop.

def factorial(n)
    fact = 1

    for i in (1..n)
        fact = fact * i
    end
    fact
end
puts factorial(5)