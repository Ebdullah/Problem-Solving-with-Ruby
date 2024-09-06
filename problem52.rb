# Problem 52: Banking System
# Problem Statement: Create a simple Banking System that allows users to create accounts,
# deposit money, withdraw money, and check balances. The system should handle file operations
# to save and load account data.

#------------------------------------------------Banking System----------------------------------------------------

class Bank 
    def initialize
        @balance = 0
        @accounts = []
        @load_from_file = 'bankdetails.txt'
    end

    def create_accounts(name,phone,cnic)
        cnic_regex = /^\d{5}-\d{7}-\d{1}$/
        if (!name.empty? || !name.nil?) && phone.size <= 11 && cnic.match(cnic_regex)
            last_digit = cnic.split('-').last.to_i
            gender = last_digit.even? ? "F" : "M"

            acc_num = generate_acc_number
            account = {name: name,phone: phone,cnic: cnic,gender: gender,balance: @balance,acc_num: acc_num}
            @accounts << account 

            puts "\nYour account has been created..\nTitle: #{name}\nAcc Number: #{acc_num}"
        else
            puts "Enter the valid name, phone and the cnic."
        end
    end

    def generate_acc_number
        acc_num = Array.new(13) { rand(10) }.join
        return acc_num unless @accounts.any? { |account| account[:acc_num] == acc_num }
    end
    # puts "Account Holder: #{account[:name]}         Balance: #{account[:balance]}"

    def deposit_money(cnic,amount)
        account = @accounts.find {|acc| acc[:cnic] == cnic}
        if account
            account[:balance] += amount
            puts "\nRs.#{amount} has been credited to your #{account[:acc_num]}"
            puts "Your Current Balance: #{account[:balance]}"
        else
            puts "Account not found."
        end
    end

    def withdraw_money(cnic,amount)
        account = @accounts.find { |acc| acc[:cnic] == cnic }
        if account
            if account[:balance] >= amount
                account[:balance] -= amount
                puts "\nDebited #{amount} from '#{account[:name]}'\nNew balance: #{account[:balance]}"
            else
                puts "Insufficient funds."
            end
        else
            puts "Account not found."
        end
    end

    def check_balance(cnic)
        account = @accounts.find { |acc| acc[:cnic] == cnic }
        if account
            puts "<-Checking Balance->\nAccount Holder: #{account[:name]}         Account: #{account[:acc_num]}         Balance: #{account[:balance]}"
        else
            puts "Account not found."
        end
    end

    def save_data
        count = 1
        File.open(@load_from_file, "w") do |file|
            @accounts.each do |account|
                file.write("\n\n")
                file.write("#{count}.\nTitle:      #{account[:name]}\nAccount Number:   #{account[:acc_num]}\nBalance:     #{account[:balance]}\nCnic:     #{account[:cnic]}\nGender:      #{account[:gender]}\nPhone:     #{account[:phone]}")
                count += 1
            end
        end
    end

    def load_data
        puts "\n---------------------------Loading Accounts------------------------------------\n"
        if File.exist?(@load_from_file)
            File.open(@load_from_file, "r") do |file|
                file.each_line do |line|
                    puts line
                end
            end
        else
            puts "No data file found."
        end
    end
end

acc1 = Bank.new
acc1.create_accounts("Abdullah","03234567890","34602-2543269-9")
acc1.create_accounts("Yahya","03235670090","34602-2543234-1")
acc1.deposit_money("34602-2543234-1",30000)
acc1.withdraw_money("34602-2543234-1",2000)
acc1.save_data
acc1.load_data
acc1.check_balance("34602-2543234-1")
