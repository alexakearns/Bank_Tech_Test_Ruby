# frozen_string_literal: true

# class for each client transction
class Transaction
  attr_reader :balance, :credit, :debit

  def initialize(balance: nil, credit: nil, debit: nil, date: Time.now.strftime('%d/%m/%Y'))
    @balance = balance
    @credit = credit
    @debit = debit
    @date = date
  end

  def display
    "#{@date} || #{float(@credit)} || #{float(@debit)} || #{float(@balance)} "
  end

  private

  def float(money)
    if money != nil
      '%.2f' % money.to_f.truncate(2)
    end
  end
end
