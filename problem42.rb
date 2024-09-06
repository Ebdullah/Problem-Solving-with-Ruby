# Problem 42: Reading from a File Write a program that reads the contents of a file named
# input.txt and prints each line to the console.


file_path = '/home/techcreatix/Desktop/week5/input.txt'

# file = File.open(file_path,"r")

# content = file.read
# puts content

File.open(file_path,"r") do |file|
    file.each_line do |line|
        puts line
    end
end