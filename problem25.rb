# Problem 25: FizzBuzz Write a method fizz_buzz that takes an integer n and prints numbers
# from 1 to n. For multiples of three, print "Fizz" instead of the number, and for the multiples of
# five, print "Buzz". For numbers that are multiples of both three and five, print "FizzBuzz".

def fizz_buzz(n)
    for i in (1..n)
        if (i%3 == 0) && (i%5 == 0)
            puts "FizzBuzz"
        elsif i%5 == 0
            puts "Buzz"
        elsif (i%3 == 0)
            puts "Fizz"
        else
            puts i
        end
    end
end

fizz_buzz(15)