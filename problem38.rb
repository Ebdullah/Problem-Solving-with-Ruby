# Problem 38: Using Modules as Namespaces Define a module Store that contains two
# classes, Product and Customer. The Product class should have attributes name and
# price. The Customer class should have attributes name and purchases. Create instances of
# these classes using the Store module as a namespace.

module Store

    class Product
        attr_accessor :name, :price
        def initialize(name,price)
            @name = name
            @price = price
        end
    end

    class Customer
        attr_accessor :name, :purchases
        def initialize(name,purchases)
            @name = name
            @purchases = purchases
        end
    end

end

namespace1 = Store::Product.new("Pen",20)
namespace2 = Store::Customer.new("Yahya",3)

puts namespace1.name
puts namespace2.purchases

