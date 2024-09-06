# Problem 30: Product Equality Create a class Product with attributes name and price.
# Override the == method to compare two products based on their attributes.

class Product
    attr_reader :name, :price
    def initialize(name,price)
        @name = name
        @price = price
    end

    def ==(other_object_item)
        self.name == other_object_item.name &&
        self.price == other_object_item.price
    end
end

p1 = Product.new("Piano",2000)
p2 = Product.new("Piano",2000)
puts p1 == p2

p3 = Product.new("Piano",2000)
p4 = Product.new("pen",2000)
puts p3 == p4