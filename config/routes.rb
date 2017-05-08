Rails.application.routes.draw do

  resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, except: [:delete]
  resources :episodes, except: [:delete]
  resources :sessions
end
