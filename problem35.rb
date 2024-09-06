# Problem 35: Lambda and Proc Differences Write a method test_lambda_vs_proc that
# demonstrates the differences between a lambda and a proc in terms of argument handling and
# return behavior. The method should return the results as an array.

def test_lambda(a,b)
    #return behavior
    lambda {return "returning from lambda"}.call
    #argument handling
    l = lambda do |a,b|
        puts "a = #{a.inspect} , b = #{b.inspect}"
    end
    l.call(a)
            
    return "returning from method call"
end

def test_proc(a,b)
    #argument handling
    proc = Proc.new do |a,b|
        puts "a=#{a.inspect} , b=#{b.inspect}"
    end
    proc.call(a)

    #return behavior
    p = Proc.new {return "returning from proc"}
    p.call
    return "returning from method call"
end

begin
    puts test_lambda(1,2)
rescue ArgumentError => e
    puts "Lambda Error: #{e.message}"
end
puts test_proc(1,2)



