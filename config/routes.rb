Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :products do
      resources :comments
  end
    
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'
    
  get 'static_pages/landing_page'
    
  resources :orders, only: [:index, :show, :create, :destroy]

  post 'static_pages/thank_you'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#landing_page'
end
