Rails.application.routes.draw do
  resources :players
  resources :leads
  resources :quote_steps
  resources :qetquotes
  resources :quotes
  # Others routes
  resources :qetquotes do
    member do
      post :toggle_ownhome
    end
  end





  #Leads






  # get '/newquote', to: 'qetquotes#new'
  delete '/deletequote', to: 'qetquotes#destroy'
  get '/startquotes', to: 'quotes#startquote'
  post '/newquote', to: 'qetquotes#create'

  # DELETE /leads/:id(.:format)
  delete '/deletelead', to: 'leads#destroy'
  # PATCH  /leads/:id(.:format)
  # PUT    /leads/:id(.:format)
  patch '/editlead', to: 'leads#update'
  # POST    /leads/:id(.:format)
  post '/createlead', to: 'leads#create'
  # GET
  get '/leads', to: 'leads#index'



  get '/quotes', to: 'quotes#show'
  get '/quotes', to: 'quotes#show'
  get '/signup', to: 'users#new'


  root 'html_pages#home'

  get '/help', to: 'html_pages#help'
  get '/about', to: 'html_pages#about'
  get '/pricing', to: 'html_pages#pricing'
  get '/register', to: 'html_pages#register'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'password/reset',to: 'password_reset#new'
  post 'password#index', to: 'password_reset#ceate'

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
# rails generate scaffold Quotecity zip:integer ownhome:boolean  deciding:boolean comparing:boolean ready:boolean currentinscomp:string currentrate:integer address:string singlefam:boolean condo:boolean coop:boolean other:boolean primaryres:boolean duplex:boolean threetofour:boolean mobilehome:boolean manufacturedhome:boolean overthreeyears:boolean homeyear:integer sqft:integer beds:string bathrooms:string numstories:string homedesign:string roof:string heating:string foundation:string frame:string material:string dogs:boolean pool:boolean tramp:boolean rentout:boolean homeforbiz:boolean firstname:string lastname:string birthdate:string gender:boolean occupation:string income:integer married:string creditscore:integer
