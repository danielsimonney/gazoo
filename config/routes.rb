Rails.application.routes.draw do

  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  
resources :comments, only: [:create]
resources :gazooies
resources :hash_tags, only: [:show]
resources :news
resources :users
resources :pages, except: [:index] 
get '/:id' => 'pages#show'
resources :profiles, only: [:show, :edit, :update, :follow, :unfollow, :followers, :followees, :mentions] do
  post "follow/:user_id", :to => "profiles#follow"
delete "unfollow/:user_id", :to => "profiles#unfollow"
   get "followers/", :to => "profiles#followers"
   get "followees/", :to => "profiles#followees"
   get "mentions/", :to => "profiles#mentions"
  end




end
