Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :regions, only: [:create, :show, :index]
  resources :users, only: [:new, :create, :show, :edit, :update]

  root "regions#index"
end
