Hotplate::Application.routes.draw do
  authenticated :user do
    root :to => 'pages#home'
  end

  devise_for :users
  devise_scope :user do
    get "login", :to => "devise/sessions#new"
    get "logout", :to => "devise/sessions#destroy"
  end

  root :to => "pages#home"
end
