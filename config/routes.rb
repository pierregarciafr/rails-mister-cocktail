Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [ :new, :show, :create, :destroy] do
    resources :doses, only: [ :index, :new, :create ]
  end
  resources :doses, only: [ :destroy ]
  resources :ingredients
end
