Rails.application.routes.draw do
  
 
  devise_for :users
  root to: "home#index"

  
  # resources :recipes, only: [:index, :new, :create, :destroy ]
  # resources :foods, only: [:index, :new, :create, :destroy ]

end
