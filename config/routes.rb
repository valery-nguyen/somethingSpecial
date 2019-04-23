Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resource :session, only: [:create, :destroy, :show]
    resources :users, only: [:create, :index, :update]
    resources :products, only: [:index, :show]
    resources :cart_items, only: [:index, :create, :update, :destroy]
    resources :searches, only: :index
    resources :search_products, only: :index
    resources :categories, only: :show
  end
  
  root to: 'static_pages#root'
end