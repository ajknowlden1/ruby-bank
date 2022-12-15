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
        puts "Successfully deposited #{amount} "
        puts "New balance is #{@balance}"
        return @balance
    end

    def withdraw(amount)
        if @balance - amount.to_i >= 0
            @balance -= amount.to_i
            puts "Successfully withdrew #{amount}"
            puts "New balance is #{@balance}"
            return true
        else
            puts 'Insufficient funds'
            return false
        end
    end
end
