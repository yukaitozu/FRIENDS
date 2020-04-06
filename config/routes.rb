Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :episodes do
    resources :characters, only: [:new, :create]
  end
  resources :characters, only: [:destroy]
end
