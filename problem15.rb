# Problem 15: Read and Write File Write a method that reads a file, reverses its contents, and
# writes the reversed content to a new file.

def reverse_file(file)

    content = File.read(file)
    puts content
    reversed_content = content.reverse

    File.open('/home/techcreatix/Desktop/newfile.txt','w') do |file|
        file.write(reversed_content)
    end

    newfile_content = File.read('/home/techcreatix/Desktop/newfile.txt')

    puts "reversed succesfully: " + newfile_content
end

file = '/home/techcreatix/Desktop/clean-slate.txt'
reverse_file(file)
# File.read('/home/techcreatix/Desktop/newfile.txt')
