#Problem 1: Create a class named Person with an instance variable name. Write a method to
#set the name and another method to get the name.

class Person 
    def initialize(name)
        @name = name
    end

    #getter
    def name
        @name
    end

    #setter
    def name=(name)
        @name = name
    end
end

#object creation
p1 = Person.new("Abdullah")
puts p1.name #invokes getter method 

p1.name=("yahya")
puts p1.name #invokes setter method