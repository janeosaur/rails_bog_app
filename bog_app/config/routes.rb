Rails.application.routes.draw do

  root "creatures#index"
  # get "/", to: "creatures#index" ?

  get "/creatures", to: "creatures#index", as: "creatures"

end
