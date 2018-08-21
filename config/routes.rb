Rails.application.routes.draw do
  devise_for :users
  
  root to: 'offices#index'
  
  resources :offices, only: [:index, :show, :create, :new, :edit, :update, :destroy] do
    
    collection do
      get 'myoffices'
    end
    
    resources :reviews, only: [:create]
    resources :bookings, only: [:create]
    
  end
  
  resources :desks
  
  resources :bookings, only: [:index, :show]

end
