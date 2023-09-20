Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'jobs#index'
  

  post '/jobs', to: 'jobs#create'
  get '/jobs', to: 'jobs#get'
  get '/jobs/:id', to: 'jobs#show'



end
