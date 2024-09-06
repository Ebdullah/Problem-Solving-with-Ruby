# Problem 33: Yield with Multiple Arguments Write a method greet_person that accepts a
# block. The method should yield two arguments, the person's name and age, to the block and
# return the block's result.

def greet_person(name,age)
    yield(name,age)
end

greet_person("Abdullah",23) {|name,age| puts "Name: #{name}, Age: #{age}"}