# Problem 28: Library Class Create a class Library with a class variable @@total_books.
# The class should have methods to add and remove books, and to display the total number of
# books in the library.

class Library
    @@total_books = 0
    def self.add_books(book)
        @@total_books += book
        puts "#{book} books added to the library"
    end

    def self.remove_books(book)
        if book > @@total_books
            puts "You cannot remove more books than available."
        else
            @@total_books -= book
        end
    end

    def self.total_books
        puts "#{@@total_books}"
    end

end

Library.add_books(5)
Library.total_books
Library.remove_books(2)
Library.total_books

