Rails.application.routes.draw do
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
  root to: 'visitors#index'
end
