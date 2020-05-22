# frozen_string_literal: true

require 'account'

describe Account do
  it 'change balance when account receives credit' do
    account = Account.new
    account.credit(50)
    expect(account.current_balance).to eq 50
  end

  it 'changes balance when account receives debit' do
    account = Account.new
    account.debit(25)
    expect(account.current_balance).to eq -25
  end
end
