class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end

    def deposit
        user = User.find_by(username: params[:username])
        account = user.accounts.find_by(currency: params[:currency])

        deposit = Deposit.create(user: user, account: account, amount: params[:amount])
        deposit.fulfill

        render json: { accounts: user.accounts }
    end

    def withdraw
        user = User.find_by(username: params[:username])
        account = user.accounts.find_by(currency: params[:currency])

        withdrawal = Withdrawal.create(user: user, account: account, amount: params[:amount])
        withdrawal.fulfill

        render json: { accounts: user.accounts }
    end

    def transfer
        user = User.find_by(username: params[:username])
        account_of_user = user.accounts.find_by(currency: params[:currency])

        target_user = User.find_by(username: params[:targetUser])
        account_of_recipient = target_user.accounts.find_by(currency: params[:currency])

        transfer = Transfer.create(user: user, account: account_of_recipient, amount: params[:amount])
        transfer.fulfill(account_of_user)

        render json: { accounts: user.accounts }

    end

    def sign_in
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: { username: user.username, token: generate_token( {id: user.id}), accounts: user.accounts }
        else
            render json: { message: "Failure!" }
        end
    end

    # Check if we can decode the token we've been sent and find a valid user
    if get_user
        # If so, send back that user's username and a newly generated token
        render json: { username: get_user.username, token: generate_token(id: get_user.id)}
      else
        # Otherwise, send back an error
        render json: { error: "You are not authorized" }
      end

    def sign_up
    end

    def create
        user = User.find_by(username: params[:username])


        # Euro Account
        Account.create(user: user, amount: 0.00, currency: "eur")

        # USD Account
        Account.create(user: user, amount: 0.00, currency: "usd")

        # GBP Account
        Account.create(user: user, amount: 0.00, currency: "gbp")

        # CHF Account
        Account.create(user: user, amount: 0.00, currency: "chf")
    end

    
end
