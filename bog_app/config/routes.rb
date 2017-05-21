Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "creatures#index"
  get "/creature", to: "creatures#index", as: "creatures"

end
