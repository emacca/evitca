Evitca::Application.routes.draw do
  devise_for :users
  resources :exercises

  resources :workouts
  resources :exercise_workouts
  
  root :to => 'pages#home'
end
