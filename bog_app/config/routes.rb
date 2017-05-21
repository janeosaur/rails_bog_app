Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "creatures#index"
  # root "creatures#index"

  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new"
  post "/creatures", to: "creatures#create"
  get "/creatures/:id", to: "creatures#show", as: "creature"
  get "/creatures/:id/edit", to: "creatures#edit"
  patch "/creatures/:id", to: "creatures#udpate"

end
