# Bank Account class to practice private and public methods
class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end

    private 
    def pin  
        @pin = 1234
    end

    def pin_error
        return "Access denied: incorrect PIN."
    end

    def overdraw_error
        return "You do not have enough money in your account to complete this transaction"
    end

    public
    def display_balance(pin_number)
        if pin_number == @pin
            puts "Balance: $#{@balance}"
        else
            puts pin_error
        end
    end

    def withdraw(pin_number, amount)
        if pin_number == @pin
            if @balance >= amount
                @balance -= amount
                puts "Withdrew $#{amount}. New balance: $#{@balance}."
            else  
                puts overdraw_error
            end
        else  
            puts pin_error
        end
    end

    def deposit(pin_number, amount)
        if pin_number == @pin
            balance += amount
            puts "You successfully deposited $#{amount}. Your new balance is $#{@balance}"
        else  
            puts pin_error
        end
    end 
end