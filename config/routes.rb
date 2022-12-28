Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "sneakers#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resource :sneakers
end
