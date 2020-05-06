Rails.application.routes.draw do
  resources :deposits
  resources :withdrawals
  resources :transfers
  resources :accounts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/sign-in", to: "users#sign_in"
  post "/sign-up", to: "users#signup"
  get "/validate", to: "users#validate"
  patch "/deposit", to: "users#deposit"
  patch "/withdraw", to: "users#withdraw"
  patch "/transfer", to: "users#transfer"
end
