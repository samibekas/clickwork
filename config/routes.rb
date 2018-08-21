Rails.application.routes.draw do
  devise_for :users
  root to: 'offices#index'
  get '/myoffices', to: 'offices#index_current_user', as: 'myoffices'
  resources :desks
  resources :offices, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
