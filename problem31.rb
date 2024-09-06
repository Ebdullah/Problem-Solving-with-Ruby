# Problem 31: Creating and Using a Lambda Create a lambda that takes a string and returns
# the string reversed. Write a method reverse_string that accepts the lambda and a string,
# and then uses the lambda to return the reversed string.

l = lambda {|string| string.reverse}
puts l.call("yayyyyy")