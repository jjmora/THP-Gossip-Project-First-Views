Rails.application.routes.draw do
  # get '/', to: 'welcome'
  get '/static/team', to: 'static#team'
  get '/static/contact', to: 'static#contact'

  get 'welcome/:first_name', to: 'welcome#welcome_message'
end

# https://guides.rubyonrails.org/routing.html