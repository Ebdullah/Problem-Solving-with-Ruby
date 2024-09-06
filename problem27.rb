# ​Problem 27: Bank Account Class Create a class BankAccount with attributes
# account_number and balance. Provide methods to deposit and withdraw money, and to
# display account details.


class InvalidAccountNumberError < StandardError
end

class BankAccount

    attr_accessor :balance
    attr_reader :account_number

    def initialize(account_number,balance)
        if account_number.size > 15
            raise InvalidAccountNumberError, "Invalid Account number. It should be 15 or less."
        else
            @account_number = account_number
        end
        @balance = balance
    end

    def deposit(deposit)
        @balance = @balance + deposit
    end

    def withdraw(withdraw)
        if withdraw > @balance
            puts "Not enough balance"
        else
            @balance = @balance - withdraw
            puts "Rs.#{withdraw} has been debited from your account."
            puts "Your current balance is Rs.#{@balance}"
        end
    end

    def display_account_details
        puts "Account Holder with account no. #{@account_number} has balance of Rs#{@balance}."
    end
end


begin
    account_holder1 = BankAccount.new("234567890234567654322", 60000)
    account_holder1.display_account_details
    account_holder1.withdraw(20000)
rescue InvalidAccountNumberError => e
    puts e.message
end



