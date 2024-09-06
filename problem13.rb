# Problem 13: Custom Map Method Create a class CustomArray that includes the
# Enumerable module and implements a custom map method.

class CustomArray
    include Enumerable
    def initialize(array)
        @array = array
    end

    def each
        @array.each do |item|
            yield(item)
        end
    end

    def map
        new_array = []
        each do |item|
            new_array << item
        end
        new_array
    end
end
books = ["math","biology","science","history"]
obj = CustomArray.new(books)
p obj.map