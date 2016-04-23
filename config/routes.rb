Rails.application.routes.draw do
  get '/topics/about', to: 'topics#about'
  post '/users/login', to: 'users#login'
  resources :topics do
    member do
      post 'upvote'
      delete 'downvote'
    end
  end
  root 'topics#index'
end
