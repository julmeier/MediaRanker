Rails.application.routes.draw do
  root to: 'works#home'

  resources:works
  resources:users
  resources:votes

  get 'works/home', to: 'works#home', as: 'home'
  post '/votes', to: 'votes#create', as: 'create_vote'

  get '/login', to: 'sessions#login_form', as: 'login_form'
  post '/login', to: 'sessions#login', as: 'login'
  delete '/logout', to: 'sessions#logout', as: 'logout'

  # delete '/works/destroy/:id', to: 'works#destroy', as: 'delete_work'

end
