Rails.application.routes.draw do

  root "staticpages#home"

  get '/home', to: "staticpages#home"

  get 'auth/github/callback', to: 'sessions#create'
  get 'login',  to: 'sessions#new'
  get 'description', to: 'staticpages#description'

  delete 'logout', to: 'sessions#destroy'

  get '*path', to: redirect('/') #unless Rails.env.development?

end
