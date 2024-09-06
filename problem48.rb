# Problem Statement: Create a simple Library Management System. This system should allow
# you to add books, list all books, search for a book by title, and lend a book to a member. The
# system should handle file operations to save and load the library data.

#------------------------------Library Management System----------------------------
# module User
#     class Member
#         attr_accessor ;user_name, :contact
#         def initialize(user_name,contact)
#             @user_name = user_name
#             @contact = contact
#         end

#         def 
#     end
# end
class Library
    # include User
    attr_accessor :list, :file_path, :lend_books
    def initialize(file_path)
        @list = {}
        @file_path = file_path
        @lend_books = []
    end

    def add_books(name_of_book,title_of_book,author_of_book)
        @list[name_of_book] = {title: title_of_book, author: author_of_book}
        append_books_to_file(name_of_book,title_of_book,author_of_book)
    end

    def list_all
        @list.each do |category, details|
          puts "\nCategory: #{category}"
          puts "  Title: #{details[:title]}"
          puts "  Author: #{details[:author]}"
        end
      end

    def search_book(name)
        @list.each do |key,value|
            if value.is_a?(Hash)
                value.each do |nested_key,nested_value|
                    if name == nested_value
                        puts "#{nested_key} : #{nested_value}"
                        puts "Author: #{value[:author]}"
                    end
                end
            end
        end
    end

    def lend_book(book_name,member_name)
        @lend_books = {"#{book_name}": member_name}
    end

#-------------------------------------------------------------File Operations------------------------------------------------------------

    def create_file(content)
        File.open(@file_path,"w") do |file|
            file.write(content)
        end
        puts "File created at #{@file_path}"
    end

    def read_file
        File.open(file_path,"r") do |file|
            file.each_line do |line|
                puts line
            end
        end
    end

    def append_books_to_file(book_name,title,author)
        File.open(file_path,"a") do |file|
            file.write("\nBook: #{book_name} | Title: #{title} | Author : #{author}")
        end            
    end

end

file_path = 'books.txt'

library = Library.new(file_path)
# library.create_file("--------------------------------------------BOOKS------------------------------------")



#--------------------------------------Adding Books-----------------------------
library.add_books("Novel","Romeo and Juliet", "Shakespear")
library.add_books("Science Fiction", "Neuromancer", "William Gibson")
library.add_books("Fantasy", "The Hobbit", "J.R.R. Tolkien")
library.add_books("Non-Fiction", "Sapiens", "Yuval Noah Harari")
library.add_books("Mystery", "The Da Vinci Code", "Dan Brown")

puts "---------------------Reading file-----------------------------"
library.read_file

puts "\n\n-----------------searching book----------------------------"
library.search_book("Romeo and Juliet")

#------------------------------------Listing all books--------------------------
puts "\n\n-----------------All Books--------------------------------"
puts library.list_all

#------------------------------------Lend Book----------------------------------
puts "\n\n-----------------Lended book-----------------------------"
library.lend_book("Romeo and Juliet","Abdullah")
puts library.lend_books
library.lend_book("Sapiens","Yuval Noah Harari")
puts library.lend_books

