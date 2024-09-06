# Problem 6: Overloading to_s Method Create a class named Car with attributes make and
# model. Override the to_s method to return a string in the format "Make Model".

class Car
    def initialize(make,model)
        @make = make
        @model = model
    end

    def to_s
        "#{@make} #{@model}"
    end
end

puts Car.new("Altis","2024")