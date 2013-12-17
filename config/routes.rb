Weintervene::Application.routes.draw do
  root :to => 'welcome#index'
  get '/signup' => "users#new"
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy'



  resources :schools do
    resources :users
    resources :students
  end

  resources :users do
    resources :referrals
    resources :incident_logs
  end

   resources :students do
    resources :referrals
  end

   resources :students do
    resources :incident_logs
  end


end
