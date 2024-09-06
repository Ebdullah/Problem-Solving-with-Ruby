# Problem 41: Writing to Standard Output Write a program that takes a list of strings and writes
# each string to standard output, each on a new line.

list = []

puts "Enter the list of strings 6 times."
for i in (1..6)
    list << gets
end

puts "\nThe List you Entered is: "
puts list