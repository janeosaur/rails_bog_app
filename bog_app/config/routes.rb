Rails.application.routes.draw do

  root "creatures#index"
  # same thing as get "/", to: "creatures#index" ?

  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new", as: "new_creature"
  post "/creatures", to: "creatures#create"
  get "/creatures/:id", to: "creatures#show", as: "creature"
  get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"
  patch "/creatures/:id", to: "creatures#update"#, as: "update_creature"
  # how to choose which paths will have path helper names?
  delete "/creatures/:id", to: "creatures#destroy"

end
