Rails.application.routes.draw do

  resources :recipes, only: [:index, :new, :create, :destroy ]
  resources :foods, only: [:index, :new, :create, :destroy ]
  
  devise_for :users

  get 'public_recipes', to: 'recipes#public_recipes'
  get 'shopping_list/index'  

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end

  root to: "home#index"

end
