# Problem 32: Using a Block with a Method Write a method iterate_and_apply that
# accepts an array and a block. The method should apply the block to each element of the array
# and return the modified array.

def iterate_and_apply(arr)
    result = []
    arr.each do |element|
        result << yield(element)
    end
    result
end
array = [1,2,3,4,5,6,7,8]
puts iterate_and_apply(array) {|num| num * 2}