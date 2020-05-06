class Transfer < ApplicationRecord
  belongs_to :user
  belongs_to :account

  def fulfill(account_of_sender)
    sender = self.user
    account_of_recipient = self.account

    account_of_recipient.amount = account_of_recipient.amount + self.amount
    account_of_sender.amount = account_of_sender.amount - self.amount

    account_of_recipient.save
    account_of_sender.save
  end
end
