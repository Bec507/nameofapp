Rails.application.routes.draw do
  resources :products, :posts
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'
    
  get 'static_pages/landing_page'
    
  resources :orders, only: [:index, :show, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#landing_page'
end
