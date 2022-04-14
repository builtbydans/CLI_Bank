require_relative "view"
require_relative "account"

class Controller
  def initialize(bank)
    @bank = bank
    @view = View.new
  end

  def list
    display_accounts
  end

  def create
    name = @view.ask_user_for("name")
    account_number = @view.ask_user_for("account number")
    sort_code = @view.ask_user_for("sort code")
    balance = @view.ask_user_for("balance")

    account = Account.new(name, account_number, sort_code, balance)
    @bank.add(account)
  end

  def destroy
    display_accounts
    number = @view.ask_user_for_number
    @bank.delete(number)
  end

  private

  def display_accounts
    accounts = @bank.all_accounts
    @view.display(accounts)
  end
end
