require_relative "account"
require "csv"

class Bank
  def initialize(csv_file)
    @accounts = []
    @csv_file = csv_file
  end

  def add(account)
    @accounts << account
    save_to_csv
  end

  def delete(index)
    @accounts.delete_at(index)
    save_to_csv
  end

  def all_accounts
    return @accounts
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @accounts << Account.new(row[0], row[1])
    end
  end

  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @accounts.each do |account|
        csv << [account.name, account.account_number, account.sort_code, account.balance]
      end
    end
  end

end
