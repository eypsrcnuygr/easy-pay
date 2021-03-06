Rails.application.routes.draw do
  resources :groups
  resources :transactions
  resources :users, except: %i[new]
  root to: 'pages#home'
  get '/signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
