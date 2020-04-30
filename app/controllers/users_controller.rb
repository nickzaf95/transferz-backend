class UsersController < ApplicationController

    def create
        # Euro Account
        Account.create(user: self, amount: 0.00, currency: "eur")

        # USD Account
        Account.create(user: self, amount:0.00, currency: "usd")

        # GBP Account
        Account.create(user: self, amount:0.00, currency: "gbp")

        # CHF Account
        Account.create(user: self, amount:0.00, currency: "chf")
    end

    
end
