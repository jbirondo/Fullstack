Rails.application.routes.draw do
  root 'static_pages#root'
  namespace :api, defaults: { format: :json } do
    resources :restaurants, only: [:create, :show, :index]
    resources :reviews, only: [:create]
    resources :reservation_dates, only: [:create, :show, :index]
    resources :reservations, only: [:show, :create, :destroy]
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
  end

end
