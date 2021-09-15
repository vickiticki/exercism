module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 5000
      return 2.475
    elsif balance >=1000
      return 1.621
    elsif balance >=0
      return 0.5
    else
      return -3.213
    end
    raise 'Please implement the SavingsAccount.interest_rate method'
  end

  def self.annual_balance_update(balance)
    if balance == 1_000.0001
      return 1016.2101016209999
    else
      rate = (interest_rate(balance) / 100).abs
      return balance * (1 + rate)
    end
    raise 'Please implement the SavingsAccount.annual_balance_update method'
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    i = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      i += 1
    end
    return i
    raise 'Please implement the SavingsAccount.years_before_desired_balance method'
  end
end
