Weintervene::Application.routes.draw do
  root :to => 'welcome#index'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/' => 'users#create'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  post 'posts' => 'service_providers#create'
  delete '/logout' => 'session#destroy'

  get '/demo' => 'users#demo'

  resources :schools do
    resources :users
    resources :students
  end

  resources :users do
    match '/referrals/new_no_pic' => 'referrals#new_no_pic', as: :no_pic
    resources :referrals
    resources :incident_logs
    resources :service_providers
    resources :students
  end

   resources :students do
    resources :referrals
    resources :incident_logs
  end

end
