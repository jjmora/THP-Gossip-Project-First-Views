Rails.application.routes.draw do
  
  resources :gossips
  resources :users
  resources :cities
  resources :gossips do
    resources :comments, only: [:new, :create, :index, :destroy]
  end

  get '/', to: 'gossips#index'
  get '/static/team', to: 'static#team'
  get '/static/contact', to: 'static#contact'
  post '/gossips/:id/comments', to: "comments#create", as:"gossips_comment_create"
end
