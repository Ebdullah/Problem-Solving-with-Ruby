# Problem 3: Initialize with Multiple Attributes Create a class named Book with attributes
# title and author. Initialize these attributes using a constructor.

class Book
    attr_accessor :title, :author
    def initialize(title,author)
        @title = title
        @author = author
    end
end

author = Book.new("New Moon","Abdullah")
puts "#{author.title}, #{author.author}"
