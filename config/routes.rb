Rails.application.routes.draw do
  resources :products
  post "checkout/create", to: "checkout#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
  get 'home', to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'join_the_pack', to: 'pages#join_the_pack'
  get 'contact_us', to: 'pages#contact_us', as: 'contact_us_page'
  post 'contact_us', to: 'pages#contact_us_submit', as: 'contact_us_submit'

end
