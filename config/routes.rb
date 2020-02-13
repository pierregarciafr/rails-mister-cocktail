Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :new, :show, :create, :index, :destroy] do
    resources :doses, only: [ :index, :new, :create ]
  end
  resources :doses, only: [ :destroy ]
  resources :ingredients
end
