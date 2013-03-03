Hotplate::Application.routes.draw do
  authenticated :user do
    root :to => 'pages#home'
  end

  get 'profile' => 'users#profile', :as => :profile
  get 'profile/:id' => 'users#profile', :as => :user

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
    get '/users/auth/:provider/callback' => 'users/omniauth_callbacks#provider_callback'
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
  end

  mount IncisorApp, :at => "/images"

  root :to => "pages#home"
end
