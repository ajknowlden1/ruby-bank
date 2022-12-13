require "test/unit"
require "/home/aaron/ruby_fun/ruby-bank/account.rb"

class BankTest < Test::Unit::TestCase
    def test_balance
        account = Account.new("test")
        assert_equal(0, account.getBalance())
    end

    def test_get_username
        account = Account.new("aTestUser")
        assert_equal("aTestUser", account.getUsername())
    end
    
    def test_deposit
        account = Account.new("test")
        account.deposit(100)
        assert_equal(100, account.getBalance())
    end

    def test_withdraw
        account = Account.new("test")
        account.deposit(100)
        account.withdraw(50)
        assert_equal(50, account.getBalance())
    end

    def test_withdraw_failed
        account = Account.new("test")
        assert_equal(false, account.withdraw(10))
    end
end