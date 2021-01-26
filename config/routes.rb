Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/index'
  resources :visits
  resources :doktors
  resources :pacients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  mount ReportsKit::Engine, at: '/'
end
