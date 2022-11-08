Rails.application.routes.draw do
  get 'posts/index', to: 'posts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts
  # Defines the root path route ("/")
  # root "articles#index"
end