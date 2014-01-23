Weintervene::Application.routes.draw do
  root :to => 'welcome#index'

  match '/signup', to: 'users#new'
  post '/signup' => 'users#create'
  # post '/' => 'users#create'

  get '/login', to: 'session#new'
  post '/login' => 'session#create'
  post 'posts' => 'service_providers#create'
  get '/logout' => 'session#destroy'

  match '/demo', to: 'users#demo'

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

