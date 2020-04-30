class User < ApplicationRecord
    has_many :withdrawals, :transfers, :accounts
    
end
