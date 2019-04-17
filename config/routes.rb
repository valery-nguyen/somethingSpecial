Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resource :user, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :products, only: [:index, :show]
    resources :cart_items, only: [:index, :create, :update]
  end

  root to: 'static_pages#root'
end