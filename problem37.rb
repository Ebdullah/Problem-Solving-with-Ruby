# Problem 37: Mixing in Multiple Modules Define two modules, Printable and Sortable.
# Printable should have a method print_items that prints each item in an array. Sortable
# should have a method sort_items that sorts the items in an array. Create a class
# Collection that includes both modules and uses their methods.

module Printable
    def print_items(arr = [])
        arr.each do |element|
            puts "#{element}"
        end
    end
end

module Sortable
    def sort_items(arr = [])
        arr.sort
    end
end

class Collection
    include Printable
    include Sortable
end

str_array = ["Abdullah","Yahya","Umar","Abdul"]
nums = [3,67,0,1,25,20,100]
Collection.new.print_items(str_array)
print "#{Collection.new.sort_items(nums)}\n"