Evitca::Application.routes.draw do
  devise_for :users
  resources :exercises

  resources :workouts

  root :to => 'pages#home'
end
