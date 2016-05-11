BaxtersList::Application.routes.draw do

  get "blist/home"
  get "blist/faq"
  #get "blist/login" => 'sessions#new'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  resources :blist 
  resources :deals
  get 'signup'  => 'users#new' 
  resources :users

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  #map '/' to be a redirect to '/deals'
  root :to => redirect('/deals')
end
