Rails.application.routes.draw do


  #resources :topics
  #resources :cities
  # resources :destinations
   devise_for :users, :controllers => { 
    :registrations => :registrations
  }
  # devise_for :users
  root to: "users#index"
  
  resources :users
  resources :cities do
    resources :destinations do
      resources :topics do
        resources :comments
      end 
    end 
  end
   
  resources :users do
    resources :destinations
  end
  
  resources :destinations do
    resources :users
  end
  
     
end
