Rails.application.routes.draw do
root 'restaurants#index'
resources :restaurants do
  resources :reviews, only: [:new, :create]
end

  # get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  # get 'restaurants/:id', to: 'restaurants#show'

  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  # patch 'restaurants/:id', to: 'restaurants#update'

  # delete 'restaurants/:id', to: 'restaurants#destroy', as: 'delete_restaurant'

  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'

  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'

end
