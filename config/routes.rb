Rails.application.routes.draw do
  root 'static_pages#index'

  get '/contact', to: 'static_pages#contact'
  post '/contact', to: 'static_pages#email'  

  resources :locations
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
