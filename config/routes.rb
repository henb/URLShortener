UrlShortener::Application.routes.draw do
  
  resources :urls
  root "static_pages#home"
  get '/api', to: 'static_pages#api'
  get '/random', to: 'static_pages#random'
  post '/random', to: 'static_pages#random'
  get '/:id', to: 'urls#open_link'

end
