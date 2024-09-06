# Problem 29: Animal Behavior Create a class Animal with methods speak and move. Then
# create a subclass Dog that overrides the speak method.

class Animal
    def speak
        "I can speak"
    end
    def move
        "I can walk"
    end
end

class Dog < Animal
    #overriding speak method 
    def speak
        "I can bark"
    end
end

animal = Animal.new
puts animal.speak

dog = Dog.new
puts dog.speak
puts dog.move