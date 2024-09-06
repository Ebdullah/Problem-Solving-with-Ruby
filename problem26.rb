# Problem 26: Book Class Create a class Book with attributes title, author, and pages.
# Include methods to display book details and check if the book is a long read (more than 300
# pages).

class Book
    attr_accessor :title, :author, :pages

    def initialize(title,author,pages)
        @title = title
        @author = author
        @pages = pages
    end

    def display_details
        puts "Title: #{@title}  |  Author: #{@author}  |  #{(@pages > 300) ? "Book is a long read" : "Pages: #{@pages}"}"
    end
end

Book.new("New Moon", "Captain Cold", 301).display_details