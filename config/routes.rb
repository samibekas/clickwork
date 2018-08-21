Rails.application.routes.draw do
  devise_for :users
  root to: 'offices#index'
  resources :offices, only: [:index, :show, :create, :new, :edit, :update, :destroy] do
    collection do
      get 'myoffices'
    end
    resources :reviews, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
