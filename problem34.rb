# Problem 34. Method with Implicit and Explicit Block Write a method process_array that
# accepts an array and an explicit block. The method should use an implicit block to process each
# element and then call the explicit block with the processed array.

def process_array(arr,&block)
    processed_array = arr.map do |element|
        yield(element)
    end
    puts "Processed Array: #{processed_array}"

    processed_array.each do |item|
        puts "#{item}"
        block.call(item)
    end
    # block.call(processed_array) if block_given?
    puts "hi, i got here"

end

result = process_array([1,2,3,4,5,6]) do |element|
    element + 2 
end

