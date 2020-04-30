class AccountsController < ApplicationController

    def index 
        accounts = Account.all.find(user: user)
    end
    
end
