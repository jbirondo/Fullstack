Rails.application.routes.draw do
  root 'static_pages#root'
  namespace :api, defaults: { format: :json } do
    resources :restaurants, only: [:create, :show, :index]
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
  end

end
