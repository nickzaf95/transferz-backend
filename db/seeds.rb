# Creating the Nicholas seed
nick = User.create(
    first_name: "nicholas",
    last_name: "zafiriou",
    email: "nicholaszafiriou@gmail.com",
    phone_number: "07809777620",
    username: "nzaf",
    password: "cat"
)

# Euro Account
Account.create(user_id: nick.id, amount: 1000.00, currency: "eur", account_number: 00000000)

# USD Account
Account.create(user_id: nick.id, amount: 1000.00, currency: "usd", account_number: 00000001)

# GBP Account
Account.create(user_id: nick.id, amount: 1000.00, currency: "gbp", account_number: 00000002)

# CHF Account
Account.create(user_id: nick.id, amount: 200.00, currency: "chf", account_number: 00000003)

sergio = User.create(
    first_name: "sergio",
    last_name: "neves",
    email: "sergio@gmail.com",
    phone_number: "911",
    username: "sn",
    password: "cat"
)

# Euro Account
Account.create(user_id: sergio.id, amount: 300.00, currency: "eur", account_number: 10000000)

# USD Account
Account.create(user_id: sergio.id, amount: 200.00, currency: "usd", account_number: 10000001)

# GBP Account
Account.create(user_id: sergio.id, amount: 1000.00, currency: "gbp", account_number: 10000002)

# CHF Account
Account.create(user_id: sergio.id, amount: 30.00, currency: "chf", account_number: 10000003)
