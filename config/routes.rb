Rails.application.routes.draw do
  root "authors#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :authors do
    resources :books
    resources :account
  end


  # Defines the root path route ("/")
  # root "articles#index"
end
