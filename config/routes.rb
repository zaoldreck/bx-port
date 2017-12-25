Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dashboard, only: :index
  resources :transactions
  resources :portfolios

  root "dashboard#index"
end
