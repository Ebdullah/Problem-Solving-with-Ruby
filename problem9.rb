# Problem 9: Implementing Enumerable Create a class named Library that includes the
# Enumerable module. The class should have an array of books and implement the each
# method.

class Library
    attr_reader :array
    include Enumerable

    def initialize(array)
        @array = array
    end
    def each
        array.each do |item|
            "#{item}"
        end
    end
end

books = ["science","biology","mathematics"]
puts Library.new(books).each