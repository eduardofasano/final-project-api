Rails.application.routes.draw do

  scope :api do
    resources :users, except: [:create]
    #moved from outside scope loop
    resources :orders
    resources :products

    post 'register', to: 'auth#register'
    post 'login', to: 'auth#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
