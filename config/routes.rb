Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: "session#index"
  post '/login', to: "session#create"
  get '/dash', to: "url_short#index"
  post '/short_url', to: "url_short#create"
end
