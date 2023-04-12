Rails.application.routes.draw do
  resources :posts
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/cloudfront_cached'
  get 'static_pages/corstest'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'posts#index'
end
