# Problem 20: Simple Thread Example Write a method that creates multiple threads to calculate
# the sum of numbers in different ranges and then sums up the results from all threads.

def sum_of_num(ranges)
    threads = []
    results = []

    ranges.each do |range|
        threads << Thread.new do
            sum = range.sum
            results << sum
        end
    end

    threads.each do |thread|
        thread.join
    end

    total_sum = results.sum
    "Sum of all ranges: #{total_sum}\nSum of different ranges in array: #{results.inspect}"
end
    

arr = [1..10,20..30,40..50]
puts sum_of_num(arr)









# def count_to_five
#     (1..5).each do |i|
#       puts "Counting #{i} in thread #{Thread.current.object_id}"
#       sleep 1 # Simulate a time-consuming task
#     end
#   end
  
#   # Create two threads to run the method concurrently
#   thread1 = Thread.new { count_to_five }
#   thread2 = Thread.new { count_to_five }
  
#   # Wait for both threads to finish
#   thread1.join
#   thread2.join
  
#   puts "Both threads have finished executing."
  