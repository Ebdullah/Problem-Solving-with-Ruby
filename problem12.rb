# Problem 12: Mixin for Price Calculation Create a module PriceCalculable with a method
# calculate_price. Include this module in a class Product with attributes name and
# base_price, and override the calculate_price method to add tax to the base price.

module PriceCalculable
    def calculate_price

    end
end

class Product
    include PriceCalculable
    attr_accessor :name, :base_price

    def initialize(name,base_price)
        @name = name
        @base_price = base_price
    end

    def calculate_price(tax)
        @base_price + (@base_price * tax/100)
    end
end
#adding 2% tax to the base_price
puts Product.new("Bread",200).calculate_price(2)