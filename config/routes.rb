Rails.application.routes.draw do
  
  resources :gossips

  get 'dyn_pages_controller/gossiper_all_gossips'
  get '/', to: 'gossips#index'
  get '/static/team', to: 'static#team'
  get '/static/contact', to: 'static#contact'

  get 'dyn_pages/gossiper/:id', to: 'dyn_pages#gossiper' ,as:'dyn_pages_gossiper'
  
  get 'dyn_pages/gossiper/:id/all', to: 'dyn_pages#gossiper_all_gossips',as:'dyn_pages_gossiper_all_gossips'
  
  get 'dyn_pages/rumor/:id', to:'dyn_pages#rumor' ,as:'dyn_pages_rumor'

  get 'welcome/:first_name', to: 'welcome#welcome_message'

  
end

# $ rails g controller message show

# get 'message/:user_entry', to: 'message#show'