class Deposit < ApplicationRecord
  belongs_to :user
  belongs_to :account

  def fulfill
    account = self.account
    account.amount = account.amount + self.amount
    account.save
  end
  
end
