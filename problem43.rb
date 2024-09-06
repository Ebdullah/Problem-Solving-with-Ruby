# Problem 43: Writing to a File Write a program that writes a list of strings to a file named
# new.txt, each string on a new line.


list_str = ["one","two","three","four","five"]
file_path = '/home/techcreatix/Desktop/week5/new.txt'
File.open(file_path,"w") do |file|
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

