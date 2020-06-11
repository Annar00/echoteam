Rails.application.routes.draw do

    resources :users
    
    get '/home',         to: 'homepage#home'
    get '/cart',         to: 'booking#cart'
    get '/showorder',    to: 'booking#showorder'
    delete '/showorder', to: 'booking#destroy'
    post '/showorder',   to: 'booking#buy'
    get '/search',       to: 'homepage#search'
    get '/source',       to: 'homepage#source'
    get '/signup',       to: 'users#new'
    post '/signup',      to: 'users#create'
    get '/login',        to: 'sessions#new'
    post '/login',       to: 'sessions#create'
    delete '/logout',    to: 'sessions#destroy'

    get '/new',          to: 'sessions#new'

    root 'homepage#home'

end
