Rails.application.routes.draw do
  
  root 'pages#home'
  
  get '/home', to: 'pages#home'
  
  #get 'recipes', to: 'recipes#index'
  #get 'recipes/new', to: 'recipes#new', as: 'new_recipe'
  #post 'recipes', to: 'recipes#create'
  #get 'recipes/:id/edit', to: 'reciptes#edit', as: 'edit_recipe'
  #patch 'recipes/:id', to: 'recipes#update'
  #get 'recipes/:id', to: 'recipes#show', as: 'recipe'
  #delete 'recipes/:id', to: 'recipes#destroy'
  
  resources :recipes do
    member do
      post 'like'
    end
  end
  
  resources :users, except: [:new, :destroy]
  
  get '/register', to: 'users#new'
  
  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  get '/logout', to: 'logins#destroy'
  
  resources :styles, only: [:new, :create, :show]
  resources :ingredients, only: [:new, :create, :show]
  
end
