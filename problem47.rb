# Problem 47: Copying a File Write a program that copies the contents of a file named
# input.txt to a new file named destination.txt.\

source_file_path = '/home/techcreatix/Desktop/week5/input.txt'
destination_file_path = '/home/techcreatix/Desktop/week5/destination.txt'

contents_of_source_file = File.read(source_file_path)
File.write(destination_file_path,contents_of_source_file) 

puts "Contents of sources file #{source_file_path} copied to destination file #{destination_file_path}"



