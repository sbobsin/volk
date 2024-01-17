Rails.application.routes.draw do
  resources :products
  post "checkout/create", to: "checkout#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'contact', to: 'pages#contact'
end
