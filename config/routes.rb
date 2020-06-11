Rails.application.routes.draw do

    resources :users
    
    get '/home',         to: 'homepage#home'

    get '/haulrecord',               to: 'homepage#haulrecord'
    get '/userrecord',               to: 'homepage#userrecord'
    get '/speciesrecord',            to: 'homepage#speciesrecord'
    get '/speciescomposition',       to: 'homepage#speciescomposition'
    get '/echogramdata',             to: 'homepage#echogramdata'

    get '/signup',       to: 'users#new'
    post '/signup',      to: 'users#create'
    get '/login',        to: 'sessions#new'
    post '/login',       to: 'sessions#create'
    delete '/logout',    to: 'sessions#destroy'

    get '/new',          to: 'sessions#new'

    root 'homepage#home'

end
