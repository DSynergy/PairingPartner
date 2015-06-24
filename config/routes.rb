Rails.application.routes.draw do

  resources :users

  root "staticpages#home"

  get '/home', to: "staticpages#home"

  get 'auth/github/callback', to: 'sessions#create'
  get 'login',  to: 'sessions#new'
  get 'description', to: 'staticpages#description'

  delete 'logout', to: 'sessions#destroy'

  get '*path', to: redirect('/') unless Rails.env.development?

  post 'matches/hot', to: "matches#hot"
  post 'matches/not', to: "matches#not"

  get 'matches/:id', to: "matches#show", as: :match

end
