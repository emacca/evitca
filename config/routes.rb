Evitca::Application.routes.draw do
  resources :exercises

  resources :workouts

  resources :users

  root :to => 'pages#home'
end
