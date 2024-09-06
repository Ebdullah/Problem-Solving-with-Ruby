# Problem 16: Extract Email Addresses Write a method that extracts all email addresses from a
# given string using regular expressions.

def extract_email(str)
    exp = /[\w.+-]+@[\w.-]+\.[a-zA-Z]{2,6}/
    emails = str.scan(exp) 

    puts "Extracted emails: "
    puts "#{emails}"
end

message  = "you can contact me on abdullah.shahid@techcreatix.com or through my personal email address abdullah@gmail.com"
extract_email(message)
