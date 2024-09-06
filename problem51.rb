# Problem Statement: Create an Inventory Management System that allows users to add
# products, list products, search products by name, and manage stock levels. The system should
# handle file operations to save and load the inventory data.

#--------------------------------------------------Inventory Management System-----------------------------------------------------------

class Inventory

    def initialize(name = "",price= "")
        @name = name
        @price = price
        @products = []
        @load_from_file = 'inventory.txt'
    end

    def add_product(name, price, stock = 0)
        if (name.empty? || name.nil?) || (price.nil? || price.is_a?(String)) || (stock.nil? || stock < 0)
            puts "Enter valid product name, price, and stock."
        else
            product = {name: name, price: price, stock: stock}
            @products << product
            puts "<-The Product-> \nName: #{product[:name]}\nPrice: #{product[:price]}\nStock: #{product[:stock]} has been added."
        end
        save_inventory
    end

    def update_stock(name, new_stock)
        if new_stock < 0
            puts "Stock cannot be negative."
            return
        end
    
        product = @products.find { |p| p[:name] == name }
        if product
            product[:stock] = new_stock
            puts "Stock for '#{name}' updated to #{new_stock}."
        else
            puts "No Product with '#{name}' found."
        end
        save_inventory
    end
    

    def list_products
        count = 1
        puts "\n\n<-All Products->"
        @products.each do |product|
            puts "#{count}. Name: #{product[:name]}\tPrice: #{product[:price]}\tStock: #{product[:stock]}"
            count += 1
        end
    end

    def search_product(name)
        found = false
        puts "\n\nSearching.."
        @products.each do |product|
            if product[:name] == name
                puts "Name: '#{product[:name]}'\nPrice: #{product[:price]}\nStock: 3#{product[:stock]}"
                found = true
                break
            end
        end
        if !found
            puts "No Product with #{name} found."
        end
    end

    def save_inventory
        File.open(@load_from_file,"w") do |file|
            @products.each do |product|
                file.write("\nName: '#{product[:name]}'         Contact: #{product[:price]}         Stock: #{product[:stock]}")
            end
        end
    end

    def load_inventory
        puts "\n---------------------------Loading Inventory------------------------------------\n"
        File.open(@load_from_file,"r") do |file|
            file.each_line do |line|
                puts line
            end
        end
    end

end

inventory = Inventory.new

inventory.add_product("pen", 20, 100)
inventory.add_product("Cup", 100, 12)
inventory.add_product("Watch", 2000, 5)
inventory.add_product("Wallet", 200, 20)


inventory.list_products

inventory.search_product("Cup")
inventory.update_stock("Cup",2)

inventory.load_inventory