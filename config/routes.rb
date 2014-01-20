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
    match '/referrals/new_no_pic' => 'referrals#new_no_pic', as: :no_pic
    resources :referrals
    resources :incident_logs
    resources :service_providers
  end

   resources :students do
    resources :referrals
  end

   resources :students do
    resources :incident_logs
  end


end
