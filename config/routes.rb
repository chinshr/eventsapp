Rails.application.routes.draw do
  devise_for :users
  resources :events do
    member do
      get 'step1'
      get 'step2'
      get 'step3'
      post 'step1update'
      patch 'step1update'
      post 'step2update'
      patch 'step2update'
      post 'step3update'
      patch 'step3update'
    end
    resources :agenda_items
  end
  namespace :admin do
    resources :events, only: [:new, :create, :index]
    root to: 'pages#index'
  end
  root to: 'visitors#index'
end
