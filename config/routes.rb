Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  # root to: 'restaurants#index'

  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post '/restaurants', to: 'restaurants'

  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  # post 'restaurants/id/reviews'
end
