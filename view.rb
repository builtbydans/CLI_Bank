class View
  def display(accounts)
    accounts.each_with_index do |account, index|
      puts "#{index + 1}. #{account.name}: #{account.account_number}, #{account.sort_code}, Balance: £#{account.balance}"
    end
  end

  def ask_user_for(action)
    puts "#{action.capitalize}?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_number
    puts "Account Number?"
    print "> "
    return gets.chomp.to_i - 1
  end
end
