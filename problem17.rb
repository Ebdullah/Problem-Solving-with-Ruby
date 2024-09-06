# Problem 17: Custom Error Class Create a custom error class InvalidAgeError. Write a
# method that raises this error if the age is less than 0.

class InvalidAgeError < StandardError
    def initialize(msg = "age cannot be negative")
        super
    end
end

class ValidateAge
    def initialize(age)
        @age = age
    end

    def validate_age
        raise InvalidAgeError if @age < 0
        puts "Valid Age"
    end
end

begin
    obj = ValidateAge.new(-1)
    obj.validate_age
rescue InvalidAgeError => e
    puts "caught an error: #{e.message}"
end

# puts StandardError.superclass