# Problem 10: Custom Attribute Accessors Create a class named Person with a custom
# attribute accessor for age that only allows setting the age if it's greater than zero.

class Person
    def initialize(age)
        @age = age
    end

    #getter
    def age
        @age
    end

    #setter
    def age=(age)
        (@age = age) if age > 0
    end
end

p = Person.new(22)
puts p.age
p.age=(0)
puts p.age
p.age=(18)
puts p.age
