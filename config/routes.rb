Rails.application.routes.draw do
  devise_for :users
  root to: 'offices#index'
  get '/myoffices', to: 'offices#index_current_user', as: 'myoffices'
  # post '/bookings', to: 'bookings#create'
  # get '/offices/:id', to: 'bookings#new'
  resources :bookings, only: [:index, :show]
  resources :offices, only: [:index, :show, :create, :new, :edit, :update, :destroy] do
    resources :bookings, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
