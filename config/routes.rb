Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :regions, only: [:create, :show, :index]
  resource :questionnaire, only: [:show]
  resources :responses, only: [:new, :create]
  resources :conversations, only: [:index]
  resources :users, only: [:new, :create, :show, :edit, :update] do
    resources :messages, only: [:show, :create]
    resource :conversation, only: [:show]
  end

  root "regions#index"
end
