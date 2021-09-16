Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  root 'html_pages#home'
  get '/help', to: 'html_pages#help'
  get '/about', to: 'html_pages#about'
  get '/pricing', to: 'html_pages#pricing'
  get '/register', to: 'html_pages#register'
  get '/login', to: 'html_pages#login'

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
