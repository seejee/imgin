Imgin::Application.routes.draw do
  root :to => 'home#index'

  match '/login'                        => 'sessions#new',     as: 'login'
  match '/logout'                       => 'sessions#destroy', as: 'logout'
  match "/auth/:provider/callback", :to => "sessions#create"
  match "/auth/failure",            :to => "sessions#failure"

  match "/dashboard", :to => "dashboard#index"
  resources :images
end
