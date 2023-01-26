Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root to: "welcome#home" 
  get '/about' => 'welcome#about'
  # post '/auth/github/callback' => 'sessions#create'
  #change 'home' to your chosen controller/model e.g. students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
