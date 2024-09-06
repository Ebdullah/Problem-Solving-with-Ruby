# Problem 23: Sum of Even Numbers Write a method sum_of_evens that takes an array of
# integers and returns the sum of all even numbers in the array using a loop.

def sum_of_evens(array)
    sum = 0
    array.each { |element| (element % 2 == 0) ? sum += element : sum }
    sum
end

array_of_integers = [2,3,4,5,6]
puts "#{sum_of_evens(array_of_integers)}"