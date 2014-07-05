Rails.application.routes.draw do

  resources :sales

  resources :clients, except: :index

end
