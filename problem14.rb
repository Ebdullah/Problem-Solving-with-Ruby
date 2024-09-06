# Problem 14: Parsing Nested Hash Write a method that takes a nested hash and returns a
# flattened hash with keys as dot-separated strings.

def flatten_hash(nested_hash, parent_key = '', separator = '.')
    flattened = {}
  
    nested_hash.each do |key, value|
      new_key = parent_key.empty? ? key.to_s : "#{parent_key}#{separator}#{key}"
  
      if value.is_a?(Hash)
        flattened.merge!(flatten_hash(value, new_key, separator))
      else
        flattened[new_key] = value
      end
    end
  
    flattened
  end
  
  nested_hash = {
    name: 'Alice', address: {city: 'Wonderland', postal: { code: '12345', area: 'North'} }, age: 30
  }
  
  flattened = flatten_hash(nested_hash)
  puts flattened