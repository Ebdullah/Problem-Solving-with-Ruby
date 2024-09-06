# Problem 39: Nested Modules Define a module Library with a nested module Management.
# Inside Management, define a class Book with attributes title and author. Also, define a
# class Member with attributes name and borrowed_books. Create instances of these classes
# using the Library::Management namespace.

module Library
    module Management
        class Book
            attr_accessor :title, :author
            def initialize(title,author)
                @title = title
                @author = author
            end
        end
        class Member
            attr_accessor :name, :borrowed_books
            def initialize(name,borrowed_books)
                @name = name
                @borrowed_books = borrowed_books
            end
        end
    end
end

namespace1 = Library::Management::Book.new("New Moon","Abdullah")
namespace2 = Library::Management::Member.new("Yahya","New Moon")

puts namespace1.title
puts namespace1.author

puts namespace2.name
puts namespace2.borrowed_books