Rails.application.routes.draw do
  
  resources :gossips
  resources :users
  resources :cities

  get 'dyn_pages_controller/gossiper_all_gossips'
  get '/', to: 'welcome#welcome_message', as: 'welcome'
  get '/static/team', to: 'static#team'
  get '/static/contact', to: 'static#contact'

  get 'dyn_pages/gossiper/:id', to: 'dyn_pages#gossiper' ,as:'dyn_pages_gossiper'
  
  get 'dyn_pages/gossiper/:id/all', to: 'dyn_pages#gossiper_all_gossips',as:'dyn_pages_gossiper_all_gossips'
  
  #show
  get 'dyn_pages/rumor/:id', to:'dyn_pages#rumor' ,as:'dyn_pages_rumor'

  get 'welcome/:first_name', to: 'welcome#welcome_message'

  
end

=begin
  
users GET    /users(.:format)                                                                         users#index
                                          POST   /users(.:format)                                                                         users#create
                                 new_user GET    /users/new(.:format)                                                                     users#new
                                edit_user GET    /users/:id/edit(.:format)                                                                users#edit
                                     user GET    /users/:id(.:format)                                                                     users#show
                                          PATCH  /users/:id(.:format)                                                                     users#update
                                          PUT    /users/:id(.:format)                                                                     users#update
                                          DELETE /users/:id(.:format)                                                                     users#destroy
  
=end