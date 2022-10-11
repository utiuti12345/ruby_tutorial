Rails.application.routes.draw do
  resources :weight_histories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'top#index'

  get 'users/:id', to: 'users#show', as: "user"
  get 'users', to: 'users#index', as: "users"
end
