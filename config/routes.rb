Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  resources :leads, only: [:index]

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :leads, only: [:create]
    end
  end
end
