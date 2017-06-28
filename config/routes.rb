Rails.application.routes.draw do

  root to: 'pages#home'

  resources :contacts, only: [:new, :create]

  resources :projects, except: [:show, :edit, :update]

  resources :projects, only: [:show, :edit, :update] do
    resources :images, except: [:index, :show]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
