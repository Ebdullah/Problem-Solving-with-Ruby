# Problem 45: Reading Specific Lines from a File Write a program that reads the 2nd and 4th
# lines from a file named input.txt and prints them.

file_path = '/home/techcreatix/Desktop/week5/input.txt'
File.open(file_path,"r") do |file|
    puts "hello"
    lines = file.readlines
    puts "here after getting lines #{lines}"
    puts "Line2 : #{lines[1]}"
    puts "Line4 : #{lines[3]}"
end
