class Account

    def initialize(username)
      @username = username
      @balance = 0
    end

    def getBalance()
        return @balance
    end

    def getUsername()
        return @username
    end

    def deposit(amount)
        @balance += amount.to_i
        puts "Successfully deposited " + amount.to_s
        puts "New balance is " + @balance.to_s
        return @balance
    end

    def withdraw(amount)
        if @balance - amount.to_i >= 0
            @balance -= amount.to_i
            puts "Successfully withdrew " + amount.to_s
            puts "New balance is " + @balance.to_s
            return true
        else
            puts "Insufficient funds"
            return false
        end
    end
end