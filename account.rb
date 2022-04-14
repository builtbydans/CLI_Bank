class Account
  attr_reader :name, :account_number, :sort_code, :balance

  def initialize(name, account_number, sort_code, balance)
    @name = name
    @account_number = account_number
    @sort_code = sort_code
    @balance = balance
  end
end
