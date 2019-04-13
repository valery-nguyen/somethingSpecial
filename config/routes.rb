Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :products, only: [:index, :show]
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
  end

  root to: 'static_pages#root'
end