Rails.application.routes.draw do

  root "staticpages#home"

  get '/home', to: "staticpages#home"

  get 'auth/github/callback', to: 'sessions#create'
  get 'login',  to: 'sessions#new'
  get 'description', to: 'staticpages#description'

  delete 'logout', to: 'sessions#destroy'

  get '*path', to: redirect('/') unless Rails.env.development?

end

# login: "121watts",
# id: 7582765,
# avatar_url: "https://avatars.githubusercontent.com/u/7582765?v=3",
# html_url: "https://github.com/121watts",
# languages: {
#   JavaScript: 1,
#   Java: 0,
#   Ruby: 0,
#   C: 1,
#   CSS: 1,
#   PHP: 0,
#   Python: 1,
#   CPlusPlus: 0,
#   ObjectiveC: 0,
#   CSharp: 0,
#   Shell: 0,
#   R: 0,
#   CoffeeScript: 0,
#   Go: 0,
#   Perl: 0,
#   Scala: 1,
#   VimL: 0,
#   Clojure: 0,
#   Haskell: 0,
#   Erlang: 0,
#   Rust: 0,
#   Swift: 0
# },
# description: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
#
