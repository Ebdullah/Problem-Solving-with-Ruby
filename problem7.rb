# Problem 7: Operator Overloading Create a class named Box with an attribute volume.
# Overload the + operator to add the volumes of two Box objects.

class Box
    attr_reader :volume
    def initialize(volume)
        @volume = volume
    end

    def +(other_object)
        self.volume + other_object.volume
    end
end

obj1 = Box.new(5)
obj2 = Box.new(7)

puts obj1.+(obj2)