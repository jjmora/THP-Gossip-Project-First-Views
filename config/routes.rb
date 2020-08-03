Rails.application.routes.draw do
  get 'dyn_pages/gossiper/:id', to: 'dyn_pages#gossiper' ,as:'dyn_pages_gossiper'
  get '/', to: 'welcome#welcome_message', as: 'welcome'
  get 'dyn_pages/rumor/:id', to:'dyn_pages#rumor' ,as:'dyn_pages_rumor'
  get '/static/team', to: 'static#team'
  get '/static/contact', to: 'static#contact'
  
  get 'welcome/:first_name', to: 'welcome#welcome_message'
end