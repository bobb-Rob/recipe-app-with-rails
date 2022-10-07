Rails.application.routes.draw do
  get 'recipe_food/new'
  get 'recipe_food/create'

  root "recipes#index"
  
  get 'public_recipes', to: 'recipes#public_recipes'
  # resources :users, only: [:index, :show, :new, :create, :destroy]  
  resources :recipes, only: [:index, :show, :new, :create, :destroy ]
   resources :foods, only: [:index, :new, :create, :destroy ]
     
  
  devise_for :users, skip: [:sessions]
  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'register', to: 'devise/sessions#create', as: :user_session
    get 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
