Rails.application.routes.draw do
  devise_for :users

  root to: 'offices#index'

  resources :offices, only: [:index, :show, :create, :new, :edit, :update, :destroy] do
    collection do
      get 'myoffices'
    end
    resources :reviews, only: [:create]
    resources :bookings, only: [:create]
    resources :office_facilities
  end

  resources :desks

  resources :bookings, only: [:index, :show, :confirm]

  resources :users, only: [:show]

  put 'bookings/:id/confirm', to: 'bookings#confirm', as: :confirm_booking
  put 'bookings/:id/reject', to: 'bookings#reject', as: :reject_booking
end
