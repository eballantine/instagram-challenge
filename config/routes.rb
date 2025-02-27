Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "main#index"    

  resources :posts, :comments

  resources :users, :only => [:show]
end
