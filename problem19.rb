    # Problem 19: Dynamic Method Generation Create a class DynamicMethods that dynamically
    # defines getter and setter methods for attributes passed in a hash during initialization.

class DynamicMethods
    def initialize(hash_param)
        @hash_param = hash_param
        define_methods
    end

    def define_methods
        @hash_param.each do |key, value|
            self.class.attr_accessor(key)

            instance_variable_set("@#{key}", value)
        end
    end

    def set_key_value(new_key, new_value)
        @hash_param[new_key] = new_value
        self.class.attr_accessor(new_key)

        instance_variable_set("@#{new_key}", new_value)
    end  
end


hash = {name: "Alice", age: 30}
obj = DynamicMethods.new(hash)
puts obj.name  
puts obj.age   

obj.set_key_value(:gender, "Male")
puts obj.gender