# Problem 8: Equality Method Create a class named Point with attributes x and y. Override
# the == method to compare two Point objects based on their coordinates.

class Point
    attr_reader :x, :y
    def initialize(x,y)
        @x = x
        @y = y
    end

    def ==(other_object)
        (self.x == other_object.x) && (self.y == other_object.y)
    end
end

point1 = Point.new(0,1)
point2 = Point.new(0,1)
puts point1 == point2