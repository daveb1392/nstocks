Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stocks, only: [:index]
  resources :users, only: [:index, :create, :show]
  post '/login', to: 'auth#create' 
  get '/validate', to: 'auth#validate_token'

  get '/stock_daily', to: 'stocks#get_time_series'



end
