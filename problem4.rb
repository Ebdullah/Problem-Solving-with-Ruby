# Problem 4: Instance Methods Add an instance method details to the Book class that
# returns a string in the format "Title by Author".

class Book
    attr_accessor :title, :author
    def initialize(title,author)
        @title = title
        @author = author
    end

    def details
        "#{@title} by #{@author}"
    end
end

author1 = Book.new("New Moon","Abdullah")
puts author1.details