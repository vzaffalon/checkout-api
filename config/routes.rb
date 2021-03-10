Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :items, only: %i[index]
  resources :categories, only: %i[index]
  resources :orders, only: %i[index create]
end
