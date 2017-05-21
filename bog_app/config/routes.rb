Rails.application.routes.draw do

  root "creatures#index"
  # same thing as get "/", to: "creatures#index" ?

  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new", as: "new_creature"
  post "/creatures", to: "creatures#create"
end
