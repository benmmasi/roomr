Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :regions, only: [:create, :show, :index]
  resources :questions, only: [:show, :index]
  resources :users, only: [:new, :create, :show, :edit, :update]
  resource :questionnaire, only: [:show]
  resources :responses, only: [:new, :create]

  root "regions#index"
end
