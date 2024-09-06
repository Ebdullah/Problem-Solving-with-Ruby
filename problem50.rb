# Problem Statement: Create an Address Book application that allows users to add contacts, list
# contacts, search contacts by name, and save/load contacts from a file.

#------------------------------------------------------------Address Book-----------------------------------------------------

class AddressBook

    def initialize(name = "",contact= "")
        @name = name
        @contacts = []
        @load_from_file = 'contacts.txt'
    end

    def add_contact(name,contact)
        if (name.empty? || name.nil?) && contact.size > 11
            puts "Enter the valid name and contact."
        else
            contact = {"name" => name, "contact" => contact}
            @contacts << contact
            puts "<-The Contact-> \nName: #{contact["name"]}\nPhone: #{contact["contact"]} has been added."
        end
        save_contacts
    end

    def list_contacts
        count = 1
        puts "\n\n<-Total Contacts->"
        @contacts.each do |contact|
            puts "#{count}. Name: #{contact["name"]}\t\tPhone: #{contact["contact"]}"
            count += 1
        end
    end

    def search_contact(name)
        found = false
        puts "\n\nSearching.."
        @contacts.each do |contact|
            if contact["name"] == name
                puts "Name: '#{contact["name"]}'\nContact: #{contact["contact"]}"
                found = true
                break
            end
        end
        if !found
            puts "No User with #{name} found."
        end
    end

    def save_contacts
        File.open(@load_from_file,"w") do |file|
            @contacts.each do |contact|
                file.write("\nName: '#{contact["name"]}'     Contact: #{contact["contact"]}")
            end
        end
    end

    def load_contacts
        puts "---------------------------Loading Contacts------------------------------------\n"
        File.open(@load_from_file,"r") do |file|
            file.each_line do |line|
                puts line
            end
        end
    end

end

address = AddressBook.new

address.add_contact("Abdullah", "03006453100")
address.add_contact("Sandhu", "03006456121")
address.add_contact("Yahya", "03234567801")
address.add_contact("Abdul", "03123456781")
address.add_contact("Umar", "03105678987")


address.list_contacts

address.search_contact("Abdullah")
address.load_contacts

