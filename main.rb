load '/home/aaron/ruby_fun/ruby-bank/account.rb'

puts 'Welcome to Ruby Bank! Please enter your username:'
username = gets
puts "Hello #{username}. Creating your account..."
account = Account.new(username)
puts 'Account created!'
logged_in = true

while logged_in == true do
    puts 'What would you like to do?'
    puts '1. Get Balance 2. Deposit 3. Withdraw 4. Log out'
    action = gets.chomp
    case action
    when '1'
    puts "Your balance is #{account.getBalance}"
    when '2'
    puts 'How much would you like to deposit?'
    amount = gets
    account.deposit(amount)
    when '3'
    puts 'How much would you like to withdraw?'
    amount = gets
    account.withdraw(amount)
    when '4'
    logged_in = false
    end
end

puts 'Goodbye!'
