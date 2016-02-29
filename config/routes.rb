Rails.application.routes.draw do
  resources :events do
    resources :agenda_items
  end
  root to: 'visitors#index'
end
