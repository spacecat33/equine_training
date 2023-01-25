Rails.application.routes.draw do
  devise_for :users

  root to: "welcome#home" 
  get '/auth/github/callback' => 'sessions#create'
  #change 'home' to your chosen controller/model e.g. students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
