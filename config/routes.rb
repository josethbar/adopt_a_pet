Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"


  root "home#index"
  # resources :home

  get '/about/', to: "home#about"
  
  resources :owners do
  resources :pets
  end

  resources :animals

end
