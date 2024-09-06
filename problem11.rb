# Problem 11: Vehicle and Car Classes Create a class Vehicle with attributes make and
# model. Then, create a subclass Car that has an additional attribute number_of_doors.
# Include methods to display vehicle and car details.

class Vehicle
    attr_accessor :make, :model
    def initialize(make,model)
        @make = make
        @model = model
    end

    def display
        puts "make: #{@make}  model: #{@model}"
    end 
end

class Car < Vehicle
    attr_accessor :number_of_doors
    def initialize(make,model,number_of_doors)
        super(make,model)
        @number_of_doors = number_of_doors
    end

    def display
        puts "#{super}number of doors: #{@number_of_doors}"
    end
end

# vehicle = Vehicle.new("Honda","Civic")
# vehicle.display
car = Car.new("Honda","Civic",4)
car.display