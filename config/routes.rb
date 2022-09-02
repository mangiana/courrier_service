Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root "home#root"
  get '/home', to: "home#index"
  get "/my_services", to: "my_services#index"
end
