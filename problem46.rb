# Problem 46: Counting Lines in a File Write a program that counts the number of lines in a file
# named input.txt and prints the count

file_path = '/home/techcreatix/Desktop/week5/input.txt'
File.open(file_path,"r") do |file|
    lines = file.readlines
    puts "Number of Lines in input.txt file are : #{lines.size}"
end