class User < ApplicationRecord
    has_many :withdrawals
    has_many :accounts
    has_many :transfers
    has_many :deposits
    has_secure_password
    
end
