# Problem 44: Appending to a File Write a program that appends a new line of text to an
# existing file named input.txt.

list_str = ["one","two","three","four","five"]
file_path = '/home/techcreatix/Desktop/week5/input.txt'
File.open(file_path,"a") do |file|
    file.puts("\n")
    list_str.each do |str|
        file.puts(str)
    end
end

#reading the updated file here
File.open(file_path,"r") do |file|
    file.each_line do |line|
        puts line
    end
end