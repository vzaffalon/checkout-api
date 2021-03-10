Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :items, only: %i[show]
  resources :categories, only: %i[show]
  resources :orders, only: %i[show create]
end
