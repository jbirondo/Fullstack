Rails.application.routes.draw do
  resources :restaurants
  root 'static_pages#root'
  namespace :api, defaults: { format: :json } do
    resources :users
    resource :session
  end

end
