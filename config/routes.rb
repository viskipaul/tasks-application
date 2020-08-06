Rails.application.routes.draw do
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'lists#index'

  get 'home/delete_completed'
  get 'home/delete_all'
end
