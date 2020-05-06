class Account < ApplicationRecord
  belongs_to :user
  has_many :withdrawals
  has_many :transfers
  has_many :deposits
end
