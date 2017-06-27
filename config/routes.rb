Rails.application.routes.draw do

  root to: 'pages#home'

  resources :contacts, only: [:new, :create]

  resources :projects


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
