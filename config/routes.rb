Testproject::Application.routes.draw do
  devise_for :users

  resources :news

  root :to => 'home#index'
end
